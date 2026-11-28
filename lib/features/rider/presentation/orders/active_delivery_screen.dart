import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:provider/provider.dart';

import '../../../../core/design/design.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/navigation_models.dart';
import '../../data/order_models.dart';
import '../../data/rider_failure.dart';
import '../../state/order_controller.dart';
import '../../state/rider_controller.dart';
import '../navigation/map_styles.dart';
import '../navigation/nav_map.dart' show riderDotIcon;
import '../navigation/navigation_screen.dart';
import '../widgets/dropoff_details.dart';
import 'order_formatting.dart';
import 'widgets/contact_actions.dart';
import 'widgets/order_empty_state.dart';
import 'widgets/pickup_code_sheet.dart';
import 'widgets/release_order_sheet.dart';

/// The order in hand, map first: where the stops are, then the one thing to
/// do about it next.
///
/// A map across the top, and over it a sheet that reads top to bottom as the
/// job does: which step, what cash to take, the stop the rider is riding to,
/// the stop after it, and the slider that moves the order on. A rider reads
/// this at a counter or on a doorstep, one-handed, and the question is always
/// "what now?", never "which of these?".
///
/// The status comes from the server on every action, never guessed locally:
/// an order this app thinks is picked up but the API does not would leave the
/// rider swiping Deliver on something that will 422.
class ActiveDeliveryScreen extends StatelessWidget {
  const ActiveDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderController orders = context.watch<OrderController>();
    final RiderOrder? order = orders.active;

    if (order == null) {
      return RefreshIndicator(
        onRefresh: () => orders.loadActive(),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            NxSpace.lg,
            NxSpace.xxl,
            NxSpace.lg,
            NxSpace.xxl,
          ),
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            if (orders.isLoadingActive)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: NxSpace.xxxl),
                child: Center(child: CircularProgressIndicator()),
              )
            else
              OrderEmptyState(
                icon: Icons.inbox_outlined,
                title: l10n.noActiveDeliveryTitle,
                body: l10n.noActiveDeliveryBody,
              ),
          ],
        ),
      );
    }

    final NxTokens t = context.nx;
    final double mapHeight =
        (MediaQuery.sizeOf(context).height * 0.36).clamp(240.0, 340.0) +
            MediaQuery.paddingOf(context).top;
    const double overlap = 28;

    final Widget sheet = Container(
      decoration: BoxDecoration(
        color: t.ground,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.07),
            blurRadius: 18,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      // Room at the end, so the slider can always be scrolled clear of a
      // message bar such as "Picked up. Deliver to the customer."
      padding: const EdgeInsets.fromLTRB(
        NxSpace.screen,
        NxSpace.sm,
        NxSpace.screen,
        120,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Container(
              width: 44,
              height: 5,
              decoration: BoxDecoration(
                color: t.border,
                borderRadius: NxRadius.pillAll,
              ),
            ),
          ),
          const SizedBox(height: NxSpace.sm),
          _JourneyCard(order: order),
          const SizedBox(height: NxSpace.sm),
          // Cash before the stops. It is the one number on this screen the
          // rider is personally liable for, and burying it under a list is
          // how a prepaid order gets charged twice.
          _CashStrip(order: order),
          const SizedBox(height: NxSpace.sm),
          _CurrentStop(order: order),
          const SizedBox(height: NxSpace.sm),
          _OtherStop(order: order),
          if (order.customerNote != null) ...<Widget>[
            const SizedBox(height: NxSpace.sm),
            _Note(note: order.customerNote!),
          ],
          if (order.items.isNotEmpty) ...<Widget>[
            const SizedBox(height: NxSpace.lg),
            Text(
              l10n.orderItemsLabel,
              style: NxType.titleSmall.copyWith(color: t.ink),
            ),
            const SizedBox(height: NxSpace.xs),
            OrderItemList(items: order.items),
          ],
          const SizedBox(height: NxSpace.lg),
          _ReachedAction(order: order),
          _PrimaryAction(order: order),
          if (order.canRelease) ...<Widget>[
            const SizedBox(height: NxSpace.sm),
            TextButton(
              onPressed:
                  orders.isActing ? null : () => _release(context, order.id),
              style: TextButton.styleFrom(
                foregroundColor: t.danger,
                minimumSize: const Size.fromHeight(48),
              ),
              child: Text(
                l10n.releaseOrderButton,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ],
      ),
    );

    return RefreshIndicator(
      onRefresh: () => orders.loadActive(silent: true),
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: mapHeight,
                  child: _MapHeader(order: order),
                ),
                Padding(
                  padding: EdgeInsets.only(top: mapHeight - overlap),
                  child: sheet,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> _release(BuildContext context, String orderId) async {
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    final bool released = await ReleaseOrderSheet.show(context, orderId);
    if (!released) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.orderReleased)));
  }
}

/// The job on a map: where the rider is, the road to the next stop, and the
/// two stops, with the order number floating over it. A preview, not a
/// navigator: it does not pan or zoom, and a tap opens the turn-by-turn
/// screen for the stop the rider is riding to.
///
/// The route is the same one turn-by-turn asks for, fetched when the screen
/// opens and again when the next stop changes at pickup, so a glance here
/// shows the way before the rider commits to full-screen navigation.
class _MapHeader extends StatefulWidget {
  const _MapHeader({required this.order});

  final RiderOrder order;

  @override
  State<_MapHeader> createState() => _MapHeaderState();
}

class _MapHeaderState extends State<_MapHeader> {
  RoutePreview? _preview;
  gm.GoogleMapController? _map;
  gm.BitmapDescriptor? _dot;
  bool _dotRequested = false;

  /// Bumped per fetch, so an answer for the old leg that lands after the
  /// rider has picked up is thrown away.
  int _fetch = 0;

  RiderOrder get _order => widget.order;

  NavTarget get _target =>
      _order.status.isCollected ? NavTarget.dropoff : NavTarget.pickup;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_dotRequested) return;
    _dotRequested = true;
    riderDotIcon(MediaQuery.devicePixelRatioOf(context)).then(
      (gm.BitmapDescriptor icon) {
        if (mounted) setState(() => _dot = icon);
      },
    );
  }

  @override
  void didUpdateWidget(_MapHeader old) {
    super.didUpdateWidget(old);
    // Picked up: the next stop is now the customer, and so is the road.
    if (old.order.id != _order.id ||
        old.order.status.isCollected != _order.status.isCollected) {
      unawaited(_load());
    }
  }

  Future<void> _load() async {
    final int fetch = ++_fetch;
    if (!NavigationScreen.canNavigate(_order, _target)) return;
    final RoutePreview preview =
        await context.read<OrderController>().previewRoute(_order, _target);
    if (!mounted || fetch != _fetch) return;
    setState(() => _preview = preview);
    _frame();
  }

  gm.LatLng? get _shop {
    final OrderPickup p = _order.pickup;
    return p.latitude != null && p.longitude != null
        ? gm.LatLng(p.latitude!, p.longitude!)
        : null;
  }

  gm.LatLng? get _home {
    final OrderDropoff? d = _order.dropoff;
    return d?.latitude != null && d?.longitude != null
        ? gm.LatLng(d!.latitude!, d.longitude!)
        : null;
  }

  gm.LatLng? get _here {
    final (double, double)? at = _preview?.here;
    return at == null ? null : gm.LatLng(at.$1, at.$2);
  }

  List<gm.LatLng> get _road => <gm.LatLng>[
        for (final (double lat, double lng)
            in _preview?.route?.points ?? const <(double, double)>[])
          gm.LatLng(lat, lng),
      ];

  /// Everything worth seeing at once: the rider, the road, both stops.
  List<gm.LatLng> get _framed => <gm.LatLng>[
        if (_here != null) _here!,
        ..._road,
        if (_shop != null) _shop!,
        if (_home != null) _home!,
      ];

  void _frame() {
    final gm.GoogleMapController? map = _map;
    final List<gm.LatLng> points = _framed;
    if (map == null || points.length < 2) return;
    try {
      unawaited(
        map.moveCamera(gm.CameraUpdate.newLatLngBounds(_bounds(points), 40)),
      );
    } catch (_) {
      // Before the first layout the map can refuse bounds; the next answer
      // frames it again.
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final bool dark = Theme.of(context).brightness == Brightness.dark;
    final bool collected = _order.status.isCollected;

    final gm.LatLng? shop = _shop;
    final gm.LatLng? home = _home;
    final gm.LatLng? here = _here;
    final gm.LatLng? next = collected ? home : shop;
    final List<gm.LatLng> road = _road;
    final List<gm.LatLng> points = _framed;
    final bool canNavigate = NavigationScreen.canNavigate(_order, _target);
    void navigate() => NavigationScreen.open(context, _order, _target);

    final String? distance = formatDistance(
      l10n,
      collected ? _order.deliveryDistanceMetres : _order.pickup.distanceMetres,
    );

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        if (points.isEmpty)
          CustomPaint(painter: _StreetsPainter(t))
        else
          gm.GoogleMap(
            initialCameraPosition: gm.CameraPosition(
              target: _centre(points),
              zoom: 13.5,
            ),
            liteModeEnabled: true,
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            compassEnabled: false,
            scrollGesturesEnabled: false,
            zoomGesturesEnabled: false,
            rotateGesturesEnabled: false,
            tiltGesturesEnabled: false,
            style: dark ? kNavMapStyleDark : null,
            padding: EdgeInsets.only(
              top: MediaQuery.paddingOf(context).top + 64,
              bottom: 44,
              left: 32,
              right: 32,
            ),
            polylines: <gm.Polyline>{
              // The road to the next stop, Google blue with a darker edge.
              if (road.length >= 2) ...<gm.Polyline>{
                gm.Polyline(
                  polylineId: const gm.PolylineId('preview-casing'),
                  points: road,
                  width: 8,
                  color: NxColors.routeBlueEdge,
                  jointType: gm.JointType.round,
                  startCap: gm.Cap.roundCap,
                  endCap: gm.Cap.roundCap,
                  zIndex: 2,
                ),
                gm.Polyline(
                  polylineId: const gm.PolylineId('preview-core'),
                  points: road,
                  width: 5,
                  color: NxColors.routeBlue,
                  jointType: gm.JointType.round,
                  startCap: gm.Cap.roundCap,
                  endCap: gm.Cap.roundCap,
                  zIndex: 3,
                ),
              }
              // No road from the server yet: a dotted line says which way,
              // and does not pretend to be a street.
              else if (here != null && next != null)
                gm.Polyline(
                  polylineId: const gm.PolylineId('preview-direct'),
                  points: <gm.LatLng>[here, next],
                  width: 4,
                  color: NxColors.routeBlueEdge.withValues(alpha: 0.8),
                  patterns: <gm.PatternItem>[
                    gm.PatternItem.dot,
                    gm.PatternItem.gap(10),
                  ],
                  zIndex: 2,
                ),
              // Before pickup, the leg after it, faint: where the food goes.
              if (!collected && shop != null && home != null)
                gm.Polyline(
                  polylineId: const gm.PolylineId('preview-next-leg'),
                  points: <gm.LatLng>[shop, home],
                  width: 3,
                  color: t.inkFaint.withValues(alpha: 0.8),
                  patterns: <gm.PatternItem>[
                    gm.PatternItem.dash(14),
                    gm.PatternItem.gap(10),
                  ],
                  zIndex: 1,
                ),
            },
            markers: <gm.Marker>{
              if (shop != null)
                gm.Marker(
                  markerId: const gm.MarkerId('pickup'),
                  position: shop,
                  icon: gm.BitmapDescriptor.defaultMarkerWithHue(
                    gm.BitmapDescriptor.hueOrange,
                  ),
                ),
              if (home != null)
                gm.Marker(
                  markerId: const gm.MarkerId('dropoff'),
                  position: home,
                  icon: gm.BitmapDescriptor.defaultMarkerWithHue(
                    gm.BitmapDescriptor.hueGreen,
                  ),
                ),
              if (here != null)
                gm.Marker(
                  markerId: const gm.MarkerId('rider'),
                  position: here,
                  // Google's own blue pin for the moment before the dot is
                  // painted, which on a phone is over before the position
                  // arrives.
                  icon: _dot ??
                      gm.BitmapDescriptor.defaultMarkerWithHue(
                        gm.BitmapDescriptor.hueAzure,
                      ),
                  anchor: const Offset(0.5, 0.5),
                  zIndexInt: 3,
                ),
            },
            onMapCreated: (gm.GoogleMapController map) {
              _map = map;
              _frame();
            },
          ),
        // The whole map is one button: to turn-by-turn for this stop.
        if (canNavigate)
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(onTap: navigate),
            ),
          ),
        Positioned(
          top: MediaQuery.paddingOf(context).top + NxSpace.sm,
          left: NxSpace.screen,
          right: NxSpace.screen,
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: t.surface,
                    borderRadius: NxRadius.pillAll,
                    boxShadow: NxShadows.floating,
                  ),
                  child: Text(
                    <String>[
                      l10n.orderNumberLabel(_order.orderNumber),
                      if (distance != null) distance,
                    ].join(' · '),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.caption.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: t.ink,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              if (canNavigate)
                Material(
                  color: t.surface,
                  shape: const CircleBorder(),
                  child: IconButton(
                    tooltip: l10n.navStart,
                    onPressed: navigate,
                    icon: Icon(Icons.navigation_rounded, color: t.primary),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  static gm.LatLng _centre(List<gm.LatLng> points) {
    double lat = 0;
    double lng = 0;
    for (final gm.LatLng p in points) {
      lat += p.latitude;
      lng += p.longitude;
    }
    return gm.LatLng(lat / points.length, lng / points.length);
  }

  static gm.LatLngBounds _bounds(List<gm.LatLng> points) {
    double south = points.first.latitude;
    double north = south;
    double west = points.first.longitude;
    double east = west;
    for (final gm.LatLng p in points) {
      if (p.latitude < south) south = p.latitude;
      if (p.latitude > north) north = p.latitude;
      if (p.longitude < west) west = p.longitude;
      if (p.longitude > east) east = p.longitude;
    }
    return gm.LatLngBounds(
      southwest: gm.LatLng(south, west),
      northeast: gm.LatLng(north, east),
    );
  }
}

/// A few pale streets, standing in for the map when the order carries no
/// coordinates.
class _StreetsPainter extends CustomPainter {
  _StreetsPainter(this.t);

  final NxTokens t;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, Paint()..color = t.surfaceMuted);
    final Paint road = Paint()
      ..color = t.surface
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      Offset(-20, size.height * 0.35),
      Offset(size.width + 20, size.height * 0.2),
      road..strokeWidth = 14,
    );
    canvas.drawLine(
      Offset(-20, size.height * 0.7),
      Offset(size.width + 20, size.height * 0.78),
      road..strokeWidth = 10,
    );
    canvas.drawLine(
      Offset(size.width * 0.4, -20),
      Offset(size.width * 0.5, size.height + 20),
      road..strokeWidth = 12,
    );
    canvas.drawLine(
      Offset(size.width * 0.78, -20),
      Offset(size.width * 0.74, size.height + 20),
      road..strokeWidth = 9,
    );
  }

  @override
  bool shouldRepaint(_StreetsPainter old) => old.t != t;
}

/// Where the rider is in the job: what to do now, which step of four, and
/// a bar per step. A step that moves on knocks once.
class _JourneyCard extends StatefulWidget {
  const _JourneyCard({required this.order});

  final RiderOrder order;

  /// The step the rider is on, 0 to 3; 4 once delivered.
  static int currentStep(RiderOrder order) => switch (order.status) {
        OrderStatus.assigned => 0,
        OrderStatus.reachedRestaurant => 1,
        OrderStatus.pickedUp || OrderStatus.outForDelivery => 2,
        OrderStatus.reachedCustomer => 3,
        OrderStatus.delivered => 4,
        _ => order.status.isCollected ? 2 : 0,
      };

  @override
  State<_JourneyCard> createState() => _JourneyCardState();
}

class _JourneyCardState extends State<_JourneyCard> {
  @override
  void didUpdateWidget(_JourneyCard old) {
    super.didUpdateWidget(old);
    if (_JourneyCard.currentStep(old.order) !=
        _JourneyCard.currentStep(widget.order)) {
      HapticFeedback.lightImpact();
    }
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final RiderOrder order = widget.order;
    final int current = _JourneyCard.currentStep(order);
    final List<String> steps = <String>[
      l10n.stepReachRestaurant,
      l10n.stepPickUp,
      l10n.stepReachCustomer,
      l10n.stepDeliver,
    ];

    Color bar(int i) => i < current
        ? t.primaryBright
        : i == current
            ? t.action
            : t.border;
    Color ink(int i) => i < current
        ? t.primary
        : i == current
            ? t.actionText
            : t.inkMuted;

    return NxCard(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  order.status.isCollected
                      ? l10n.deliverToCustomer
                      : l10n.headToRestaurant,
                  style: NxType.titleSmall.copyWith(
                    color: t.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(width: NxSpace.xs),
              Text(
                l10n.permStepCount(
                  (current + 1).clamp(1, steps.length),
                  steps.length,
                ),
                style: NxType.caption.copyWith(color: t.inkMuted),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              for (int i = 0; i < steps.length; i++) ...<Widget>[
                if (i > 0) const SizedBox(width: 6),
                Expanded(
                  child: AnimatedContainer(
                    duration: AppMotion.medium,
                    curve: AppMotion.change,
                    height: 6,
                    decoration: BoxDecoration(
                      color: bar(i),
                      borderRadius: NxRadius.pillAll,
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 6),
          Row(
            key: const ValueKey<String>('journey-steps'),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (int i = 0; i < steps.length; i++) ...<Widget>[
                if (i > 0) const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    steps[i],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.caption.copyWith(
                      fontSize: 11,
                      color: ink(i),
                      fontWeight:
                          i == current ? FontWeight.w800 : FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

/// What to take at the door, as a bold orange strip; or, plainly, that
/// there is nothing to take. Both cases get a strip: a prepaid order with no
/// strip leaves the rider to infer it, and inferring wrong means asking a
/// customer for money they have already paid.
class _CashStrip extends StatelessWidget {
  const _CashStrip({required this.order});

  final RiderOrder order;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;

    if (!order.isCashOnDelivery) {
      return Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: t.primarySoft,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.verified_rounded, color: t.primary),
            const SizedBox(width: NxSpace.sm),
            Expanded(
              child: Text(
                l10n.nothingToCollect,
                style: NxType.titleSmall.copyWith(
                  fontSize: 15,
                  color: t.primary,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      );
    }

    final String amount = formatAmount(l10n, order.collectCash);
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      decoration: BoxDecoration(
        color: t.action,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  l10n.cashToCollectLabel.toUpperCase(),
                  style: NxType.caption.copyWith(
                    color: t.onAction,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
                Text(
                  l10n.collectAtDoor(amount),
                  style: NxType.bodySmall.copyWith(
                    color: t.onAction,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: NxSpace.sm),
          NxMoneyText(
            order.collectCash,
            split: false,
            colour: t.onAction,
            style: NxType.display.copyWith(fontSize: 30),
          ),
        ],
      ),
    );
  }
}

/// The stop the rider is riding to, in a card with a green edge: what and
/// where, the door if it is the drop, and a call and the way there.
class _CurrentStop extends StatelessWidget {
  const _CurrentStop({required this.order});

  final RiderOrder order;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final OrderDropoff? drop = order.dropoff;
    final bool atDrop = order.status.isCollected && drop != null;
    final NavTarget target = atDrop ? NavTarget.dropoff : NavTarget.pickup;

    final String label = atDrop ? l10n.dropoffLabel : l10n.pickupLabel;
    final String? distance = formatDistance(
      l10n,
      atDrop ? order.deliveryDistanceMetres : order.pickup.distanceMetres,
    );
    final String? name = atDrop ? drop.contactName : order.pickup.name;
    final String address = atDrop ? drop.address : order.pickup.address;
    final String? phone = atDrop ? drop.contactPhone : order.pickup.phone;
    final double? lat = atDrop ? drop.latitude : order.pickup.latitude;
    final double? lng = atDrop ? drop.longitude : order.pickup.longitude;

    // In-app turn-by-turn where the server can route it; the phone's own
    // maps app otherwise.
    final VoidCallback? navigate = NavigationScreen.canNavigate(order, target)
        ? () => NavigationScreen.open(context, order, target)
        : (lat != null && lng != null) || address.isNotEmpty
            ? () => openDirections(
                  latitude: lat,
                  longitude: lng,
                  address: address,
                )
            : null;

    return NxCard(
      borderColor: t.primaryBright,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: t.primarySoft,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  atDrop ? Icons.home_rounded : Icons.storefront_rounded,
                  color: t.primary,
                ),
              ),
              const SizedBox(width: NxSpace.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      <String>[
                        label.toUpperCase(),
                        if (distance != null) distance,
                      ].join(' · '),
                      style: NxType.caption.copyWith(
                        color: t.inkMuted,
                        letterSpacing: 0.4,
                      ),
                    ),
                    if (name != null && name.isNotEmpty)
                      Text(
                        name,
                        style: NxType.title.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: t.ink,
                        ),
                      ),
                    Text(
                      address,
                      style: NxType.bodySmall.copyWith(color: t.inkMuted),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // The door matters at the drop: flat, street, landmark, photo.
          if (atDrop && !DropoffDetails.isEmpty(drop)) ...<Widget>[
            const SizedBox(height: NxSpace.sm),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 56),
              child: DropoffDetails(dropoff: drop),
            ),
          ],
          const SizedBox(height: NxSpace.md),
          Row(
            children: <Widget>[
              if (phone != null && phone.isNotEmpty) ...<Widget>[
                Tooltip(
                  message: atDrop ? l10n.callCustomer : l10n.callRestaurant,
                  child: OutlinedButton(
                    onPressed: () => dial(phone),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(56, 52),
                      foregroundColor: t.primary,
                    ),
                    child: Semantics(
                      label: atDrop ? l10n.callCustomer : l10n.callRestaurant,
                      child: const Icon(Icons.call_rounded),
                    ),
                  ),
                ),
                const SizedBox(width: NxSpace.sm),
              ],
              Expanded(
                child: FilledButton(
                  onPressed: navigate,
                  style: FilledButton.styleFrom(
                    backgroundColor: t.night,
                    foregroundColor: t.onNight,
                    minimumSize: const Size.fromHeight(52),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.navigation_rounded, size: 18, color: t.lime),
                      const SizedBox(width: NxSpace.xs),
                      Flexible(
                        child: Text(
                          l10n.navStart,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// The other stop, dimmed: the customer while riding to the restaurant, or
/// the restaurant once the food is in the bag. Kept on screen rather than
/// removed: a rider who has to go back for a forgotten item still needs the
/// restaurant's number.
class _OtherStop extends StatelessWidget {
  const _OtherStop({required this.order});

  final RiderOrder order;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final bool collected = order.status.isCollected;
    final OrderDropoff? drop = order.dropoff;

    final String title;
    final String subtitle;
    String? distance;
    final Widget trailing;
    if (!collected) {
      if (drop == null) return const SizedBox.shrink();
      final String who = drop.contactName;
      title = l10n.nextStopDeliverTo(who.isEmpty ? drop.address : who);
      distance = formatDistance(l10n, order.deliveryDistanceMetres);
      subtitle = drop.address;
      trailing = NavigationScreen.canNavigate(order, NavTarget.dropoff)
          ? IconButton(
              key: const ValueKey<String>('nav-next'),
              tooltip: l10n.navStart,
              onPressed: () =>
                  NavigationScreen.open(context, order, NavTarget.dropoff),
              icon: Icon(Icons.navigation_outlined, color: t.inkMuted),
            )
          : const SizedBox.shrink();
    } else {
      final String shop = order.pickup.name ?? '';
      title = l10n.pickedUpFrom(shop.isEmpty ? order.pickup.address : shop);
      subtitle = order.pickup.address;
      final String? phone = order.pickup.phone;
      trailing = phone == null || phone.isEmpty
          ? const SizedBox.shrink()
          : IconButton(
              key: const ValueKey<String>('call-previous'),
              tooltip: l10n.callRestaurant,
              onPressed: () => dial(phone),
              icon: Icon(Icons.call_outlined, color: t.inkMuted),
            );
    }

    return Opacity(
      opacity: 0.8,
      child: NxCard(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 8, 10),
        child: Row(
          children: <Widget>[
            Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: collected ? t.primaryBright : t.action,
                borderRadius: BorderRadius.circular(4),
              ),
              child: collected
                  ? const Icon(
                      Icons.check_rounded,
                      size: 11,
                      color: Colors.white,
                    )
                  : null,
            ),
            const SizedBox(width: NxSpace.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.titleSmall.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: t.ink,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          subtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: NxType.caption.copyWith(
                            color: t.inkMuted,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      if (distance != null)
                        Text(
                          ' · $distance',
                          textDirection: TextDirection.ltr,
                          style: NxType.caption.copyWith(color: t.inkMuted),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}

class _Note extends StatelessWidget {
  const _Note({required this.note});

  final String note;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    return NxCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.sticky_note_2_outlined, size: 20, color: t.info),
          const SizedBox(width: NxSpace.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  l10n.customerNoteLabel,
                  style: NxType.caption.copyWith(color: t.inkMuted),
                ),
                const SizedBox(height: 2),
                Text(note, style: NxType.body.copyWith(color: t.ink)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// "I've reached the restaurant" / "I've reached the customer".
///
/// Optional and secondary: it tells the kitchen or the customer the rider is
/// here, but pickup and delivery never wait on it — a rider holding the bag
/// must never be blocked by a button they did not press. Shown only until it
/// has been pressed for this stop.
class _ReachedAction extends StatelessWidget {
  const _ReachedAction({required this.order});

  final RiderOrder order;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderController orders = context.watch<OrderController>();

    final bool atRestaurantStep = order.status == OrderStatus.assigned;
    final bool atCustomerStep = order.status == OrderStatus.pickedUp ||
        order.status == OrderStatus.outForDelivery;
    if (!atRestaurantStep && !atCustomerStep) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.sm),
      child: NxSecondaryButton(
        icon: atRestaurantStep
            ? Icons.storefront_outlined
            : Icons.door_front_door_outlined,
        label: atRestaurantStep
            ? l10n.reachedRestaurantButton
            : l10n.reachedCustomerButton,
        tone: NxTone.success,
        onPressed: orders.isActing
            ? null
            : () async {
                final ScaffoldMessengerState messenger =
                    ScaffoldMessenger.of(context);
                final RiderFailure? failure = atRestaurantStep
                    ? await orders.reachedRestaurant(order.id)
                    : await orders.reachedCustomer(order.id);
                if (failure != null) return;
                messenger
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(
                        atRestaurantStep
                            ? l10n.reachedRestaurantDone
                            : l10n.reachedCustomerDone,
                      ),
                    ),
                  );
              },
      ),
    );
  }
}

/// The slider that moves the order along.
///
/// Two states only, because there are only ever two things left to do:
/// collect it, or hand it over. A swipe rather than a tap, so neither happens
/// from a pocket or a bumpy road.
class _PrimaryAction extends StatelessWidget {
  const _PrimaryAction({required this.order});

  final RiderOrder order;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderController orders = context.watch<OrderController>();

    if (order.status.isCollected) {
      return NxSwipeButton(
        key: const ValueKey<String>('deliver-swipe'),
        label: l10n.swipeDeliver,
        icon: Icons.done_all_rounded,
        busy: orders.isActing,
        onConfirmed: () => _deliver(context),
      );
    }

    return NxSwipeButton(
      key: const ValueKey<String>('pickup-swipe'),
      label: l10n.swipePickUp,
      icon: Icons.shopping_bag_rounded,
      busy: orders.isActing,
      onConfirmed: () async {
        final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
        final AppLocalizations strings = AppLocalizations.of(context);

        final bool confirmed = await PickupCodeSheet.show(context, order.id);
        if (!confirmed) return;

        messenger
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(strings.pickupConfirmed)));
      },
    );
  }

  /// Confirming a delivery is irreversible. On a prepaid order the swipe is
  /// the confirmation. On a cash order it is also the moment the rider
  /// becomes liable for the money, so it asks once more — and the question
  /// names the amount, because "did you collect it?" is easier to wave
  /// through than "did you collect ₹480?".
  Future<void> _deliver(BuildContext context) async {
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final NavigatorState navigator = Navigator.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderController orders = context.read<OrderController>();
    final RiderController rider = context.read<RiderController>();

    if (order.isCashOnDelivery) {
      final bool? confirmed = await showDialog<bool>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(l10n.confirmDeliveryTitle),
          content: Text(
            l10n.confirmDeliveryCashBody(formatAmount(l10n, order.collectCash)),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(l10n.cancelLabel),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(l10n.confirmDeliveryButton),
            ),
          ],
        ),
      );
      if (confirmed != true) return;
    }

    final RiderFailure? failure = await orders.deliver(order.id);

    if (failure != null) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(failure.message(l10n)),
            duration: const Duration(seconds: 5),
          ),
        );
      return;
    }

    // The server increments `completed_deliveries` and puts the rider back
    // on `available`. Refetching is how the home screen learns both — adding
    // one locally would drift from the figure the rider is paid against.
    await rider.refresh();
    // This screen has already swapped to its empty state, so the moment is
    // shown from the navigator, not from here.
    if (!navigator.mounted) return;
    await _Delivered.show(navigator.context, earned: order.earnings);
  }
}

/// The moment a delivery closes: a tick drawn in, what it paid, and that the
/// rider is back on the board.
class _Delivered extends StatelessWidget {
  const _Delivered({required this.earned});

  final double earned;

  static Future<void> show(BuildContext context, {required double earned}) {
    HapticFeedback.heavyImpact();
    return showDialog<void>(
      context: context,
      builder: (_) => _Delivered(earned: earned),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    return Dialog(
      key: const ValueKey<String>('delivered'),
      insetPadding: const EdgeInsets.all(NxSpace.xl),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          NxSpace.xl,
          NxSpace.md,
          NxSpace.xl,
          NxSpace.xl,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const NxSuccessCheck(size: 88),
            Text(
              l10n.deliverySuccessTitle,
              textAlign: TextAlign.center,
              style: NxType.title.copyWith(
                color: t.ink,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: NxSpace.md),
            Text(
              l10n.deliverySuccessYouEarned,
              style: NxType.caption.copyWith(color: t.inkMuted),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: NxMoneyText(
                earned,
                sign: '+',
                colour: t.primary,
                style: NxType.display.copyWith(fontSize: 40),
              ),
            ),
            const SizedBox(height: NxSpace.xs),
            Text(
              l10n.deliveryConfirmed,
              textAlign: TextAlign.center,
              style: NxType.bodySmall.copyWith(color: t.inkMuted),
            ),
            const SizedBox(height: NxSpace.lg),
            NxPrimaryButton(
              label: l10n.continueLabel,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

/// The ticket, as a checklist for the counter.
///
/// Quantity leads, then the dish, then its options — that is the order the
/// bag is checked in. The line total is present but quiet: the rider is
/// confirming contents, not settling a bill.
class OrderItemList extends StatelessWidget {
  const OrderItemList({super.key, required this.items});

  final List<OrderItem> items;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;

    return NxCard(
      padding: EdgeInsets.zero,
      child: Column(
        children: <Widget>[
          for (int i = 0; i < items.length; i++) ...<Widget>[
            if (i > 0) Divider(height: 1, color: t.hairline),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: t.surfaceMuted,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '${items[i].quantity}',
                      textDirection: TextDirection.ltr,
                      style: NxType.titleSmall.copyWith(
                        fontSize: 14,
                        color: t.ink,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(width: NxSpace.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            _VegMark(isVeg: items[i].isVeg),
                            const SizedBox(width: NxSpace.xs),
                            Expanded(
                              child: Text(
                                items[i].name,
                                style: NxType.body.copyWith(
                                  color: t.ink,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (items[i].options.isNotEmpty) ...<Widget>[
                          const SizedBox(height: 4),
                          Text(
                            items[i]
                                .options
                                .map((OrderItemOption o) => o.name)
                                .join(', '),
                            style:
                                NxType.bodySmall.copyWith(color: t.inkMuted),
                          ),
                        ],
                        if (items[i].notes != null) ...<Widget>[
                          const SizedBox(height: 4),
                          Text(
                            items[i].notes!,
                            style: NxType.bodySmall.copyWith(
                              color: t.inkMuted,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    formatAmount(l10n, items[i].lineTotal),
                    textDirection: TextDirection.ltr,
                    style: NxType.bodySmall.copyWith(color: t.inkMuted),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// The green or brown square every Indian menu carries. Drawn rather than
/// translated: it is a regulatory mark, and it means the same thing in all 23
/// languages.
class _VegMark extends StatelessWidget {
  const _VegMark({required this.isVeg});

  final bool isVeg;

  @override
  Widget build(BuildContext context) {
    final Color colour =
        isVeg ? const Color(0xFF2C8B0D) : const Color(0xFF9B2C2C);

    return Container(
      width: 13,
      height: 13,
      decoration: BoxDecoration(
        border: Border.all(color: colour, width: 1.4),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Center(
        child: Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(color: colour, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
