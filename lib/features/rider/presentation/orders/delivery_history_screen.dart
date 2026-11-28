import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/design/design.dart';
import '../../../../core/widgets/info_tile.dart' show StatusTone;
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/order_models.dart';
import '../../data/rider_failure.dart';
import '../../state/order_controller.dart';
import 'order_details_screen.dart';
import 'order_formatting.dart';
import 'widgets/order_empty_state.dart';

/// Which slice of the history is on screen.
enum _Range { all, today, week, month }

/// What the rider has already done, a day at a time.
///
/// Fetched once when the tab is opened rather than polled: a finished delivery
/// does not change, and the only new row is one this app itself just created.
/// The range and the search filter what is already on the phone; neither
/// asks the server.
class DeliveryHistoryScreen extends StatefulWidget {
  const DeliveryHistoryScreen({super.key});

  @override
  State<DeliveryHistoryScreen> createState() => _DeliveryHistoryScreenState();
}

class _DeliveryHistoryScreenState extends State<DeliveryHistoryScreen> {
  final TextEditingController _search = TextEditingController();
  String _query = '';
  _Range _range = _Range.all;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<OrderController>().loadHistory();
    });
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  bool _matches(RiderOrder order, String query) {
    for (final String? field in <String?>[
      order.orderNumber,
      order.pickup.name,
      order.pickup.address,
      order.dropoff?.contactName,
      order.dropoff?.address,
    ]) {
      if (field != null && field.toLowerCase().contains(query)) return true;
    }
    return false;
  }

  /// The first moment of the range. "This week" starts on Monday, the same
  /// week payouts are worked out over.
  static DateTime? _since(_Range range, DateTime now) {
    final DateTime today = DateTime(now.year, now.month, now.day);
    return switch (range) {
      _Range.all => null,
      _Range.today => today,
      _Range.week => today.subtract(Duration(days: today.weekday - 1)),
      _Range.month => DateTime(now.year, now.month),
    };
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final OrderController orders = context.watch<OrderController>();
    final List<RiderOrder> history = orders.history;

    final String query = _query.trim().toLowerCase();
    final DateTime? since = _since(_range, DateTime.now());
    final List<RiderOrder> shown = <RiderOrder>[
      for (final RiderOrder order in history)
        if ((query.isEmpty || _matches(order, query)) &&
            (since == null ||
                ((_Day.when(order)?.isBefore(since)) == false)))
          order,
    ];
    final List<_Day> days = _Day.group(shown);
    final List<RiderOrder> delivered = <RiderOrder>[
      for (final RiderOrder order in shown)
        if (order.status == OrderStatus.delivered) order,
    ];
    final double earned = delivered.fold<double>(
      0,
      (double sum, RiderOrder order) => sum + order.earnings,
    );

    final List<Widget> top = <Widget>[
      Text(
        l10n.historyTitle,
        style: NxType.headline.copyWith(color: t.ink),
      ),
      const SizedBox(height: NxSpace.md),
      if (history.isNotEmpty) ...<Widget>[
        _RangeTabs(
          value: _range,
          onChanged: (_Range r) => setState(() => _range = r),
        ),
        const SizedBox(height: NxSpace.sm),
        _Summary(earned: earned, deliveries: delivered.length),
        const SizedBox(height: NxSpace.sm),
        TextField(
          key: const ValueKey<String>('history-search'),
          controller: _search,
          onChanged: (String value) => setState(() => _query = value),
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: l10n.historySearchHint,
            prefixIcon: const Icon(Icons.search_rounded),
            suffixIcon: _query.isEmpty
                ? null
                : IconButton(
                    tooltip:
                        MaterialLocalizations.of(context).clearButtonTooltip,
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      _search.clear();
                      setState(() => _query = '');
                    },
                  ),
          ),
        ),
        const SizedBox(height: NxSpace.md),
      ],
      if (orders.historyFailure != null) ...<Widget>[
        OrderBanner(message: orders.historyFailure!.message(l10n)),
        const SizedBox(height: NxSpace.md),
      ],
    ];

    final Widget? placeholder = orders.isLoadingHistory && history.isEmpty
        ? const NxSkeletonList(count: 3, height: 96)
        : history.isEmpty
            ? OrderEmptyState(
                icon: Icons.history_rounded,
                title: l10n.historyEmptyTitle,
                body: l10n.historyEmptyBody,
              )
            : shown.isEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Text(
                      query.isEmpty
                          ? l10n.historyEmptyTitle
                          : l10n.historyNoMatch(_query.trim()),
                      textAlign: TextAlign.center,
                      style: NxType.body.copyWith(color: t.inkMuted),
                    ),
                  )
                : null;

    const EdgeInsets side = EdgeInsets.symmetric(horizontal: NxSpace.screen);

    return RefreshIndicator(
      onRefresh: () => orders.loadHistory(),
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(
              NxSpace.screen,
              NxSpace.sm,
              NxSpace.screen,
              0,
            ),
            sliver: SliverList(delegate: SliverChildListDelegate(top)),
          ),
          if (placeholder != null)
            SliverPadding(
              padding: side,
              sliver: SliverToBoxAdapter(child: placeholder),
            )
          else
            for (final _Day day in days)
              SliverMainAxisGroup(
                slivers: <Widget>[
                  // The day stays pinned while its orders scroll under it.
                  PinnedHeaderSliver(
                    child: ColoredBox(
                      color: t.ground,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          NxSpace.screen + 4,
                          NxSpace.sm,
                          NxSpace.screen + 4,
                          NxSpace.sm,
                        ),
                        child: _DayHeader(day: day),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(
                      NxSpace.screen,
                      0,
                      NxSpace.screen,
                      NxSpace.lg,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: NxCard(
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: <Widget>[
                            for (int i = 0; i < day.orders.length; i++) ...<
                                Widget>[
                              if (i > 0)
                                Divider(
                                  height: 1,
                                  indent: 72,
                                  color: t.hairline,
                                ),
                              _HistoryRow(
                                order: day.orders[i],
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                    builder: (_) => OrderDetailsScreen(
                                      order: day.orders[i],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          const SliverToBoxAdapter(child: SizedBox(height: NxSpace.xl)),
        ],
      ),
    );
  }
}

/// All / Today / This week / This month, as one segmented control.
class _RangeTabs extends StatelessWidget {
  const _RangeTabs({required this.value, required this.onChanged});

  final _Range value;
  final ValueChanged<_Range> onChanged;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final Map<_Range, String> labels = <_Range, String>{
      _Range.all: l10n.historyFilterAll,
      _Range.today: l10n.historyToday,
      _Range.week: l10n.historyFilterWeek,
      _Range.month: l10n.historyFilterMonth,
    };
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: t.surfaceMuted,
        borderRadius: NxRadius.controlAll,
      ),
      child: Row(
        children: <Widget>[
          for (final MapEntry<_Range, String> entry in labels.entries)
            Expanded(
              child: Semantics(
                button: true,
                selected: entry.key == value,
                child: GestureDetector(
                  key: ValueKey<String>('history-range-${entry.key.name}'),
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onChanged(entry.key),
                  child: AnimatedContainer(
                    duration: AppMotion.quick,
                    curve: AppMotion.change,
                    constraints: const BoxConstraints(minHeight: 40),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: entry.key == value ? t.surface : null,
                      borderRadius: BorderRadius.circular(NxRadius.control - 4),
                      boxShadow: entry.key == value ? t.cardShadow : null,
                    ),
                    child: Text(
                      entry.value,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.caption.copyWith(
                        fontSize: 13,
                        color: entry.key == value ? t.ink : t.inkMuted,
                        fontWeight: entry.key == value
                            ? FontWeight.w800
                            : FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// What the chosen range came to: earned, and how many deliveries.
class _Summary extends StatelessWidget {
  const _Summary({required this.earned, required this.deliveries});

  final double earned;
  final int deliveries;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    return NxCard(
      key: const ValueKey<String>('history-summary'),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    l10n.historyEarned,
                    style: NxType.caption.copyWith(color: t.inkMuted),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: NxMoneyText(
                      earned,
                      colour: t.primary,
                      style: NxType.display.copyWith(fontSize: 28),
                    ),
                  ),
                ],
              ),
            ),
            VerticalDivider(width: NxSpace.xl, color: t.hairline),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    l10n.completedDeliveriesLabel,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.caption.copyWith(color: t.inkMuted),
                  ),
                  Text(
                    '$deliveries',
                    style: NxType.display.copyWith(
                      fontSize: 28,
                      color: t.ink,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// The orders of one calendar day, newest first. [date] is null for orders
/// the server sent no time for, which go last.
class _Day {
  _Day(this.date, this.orders);

  final DateTime? date;
  final List<RiderOrder> orders;

  /// When the order finished, or failing that the latest thing known about it.
  static DateTime? when(RiderOrder order) =>
      (order.deliveredAt ??
              order.pickedUpAt ??
              order.assignedAt ??
              order.placedAt)
          ?.toLocal();

  static List<_Day> group(List<RiderOrder> orders) {
    final Map<DateTime?, List<RiderOrder>> byDay =
        <DateTime?, List<RiderOrder>>{};
    for (final RiderOrder order in orders) {
      final DateTime? t = when(order);
      final DateTime? day = t == null ? null : DateTime(t.year, t.month, t.day);
      byDay.putIfAbsent(day, () => <RiderOrder>[]).add(order);
    }
    final List<_Day> days = <_Day>[
      for (final MapEntry<DateTime?, List<RiderOrder>> e in byDay.entries)
        _Day(
          e.key,
          e.value..sort(RiderOrder.newestFirst),
        ),
    ];
    days.sort((_Day a, _Day b) {
      if (a.date == null) return 1;
      if (b.date == null) return -1;
      return b.date!.compareTo(a.date!);
    });
    return days;
  }
}

/// "Today", and beside it what the day came to.
class _DayHeader extends StatelessWidget {
  const _DayHeader({required this.day});

  final _Day day;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final DateTime? date = day.date;

    final String label;
    if (date == null) {
      label = l10n.historyEarlier;
    } else {
      final DateTime now = DateTime.now();
      final DateTime today = DateTime(now.year, now.month, now.day);
      final int ago = today.difference(date).inDays;
      label = ago == 0
          ? l10n.historyToday
          : ago == 1
              ? l10n.historyYesterday
              : MaterialLocalizations.of(context).formatMediumDate(date);
    }

    // Only finished deliveries count towards the day: a cancelled order
    // earned nothing on this screen's say-so.
    final List<RiderOrder> delivered = <RiderOrder>[
      for (final RiderOrder order in day.orders)
        if (order.status == OrderStatus.delivered) order,
    ];
    final double earned = delivered.fold<double>(
      0,
      (double sum, RiderOrder order) => sum + order.earnings,
    );

    // Both sides loose, pushed apart: the day on the left, its total at the
    // right edge, and either one shrinking if a language runs long.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: NxType.titleSmall.copyWith(
              color: t.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        if (delivered.isNotEmpty) ...<Widget>[
          const SizedBox(width: NxSpace.sm),
          Flexible(
            child: Text(
              l10n.historyDaySummary(
                delivered.length,
                formatAmount(l10n, earned),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
              style: NxType.caption.copyWith(color: t.inkMuted),
            ),
          ),
        ],
      ],
    );
  }
}

/// One finished order: where from, when, and what it paid.
class _HistoryRow extends StatelessWidget {
  const _HistoryRow({required this.order, required this.onTap});

  final RiderOrder order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final bool delivered = order.status == OrderStatus.delivered;
    final DateTime? when = _Day.when(order);

    final String? shop = order.pickup.name;
    final String name = shop != null && shop.isNotEmpty
        ? shop
        : l10n.orderNumberLabel(order.orderNumber);
    final String subline = <String>[
      order.orderNumber,
      if (when != null)
        MaterialLocalizations.of(context)
            .formatTimeOfDay(TimeOfDay.fromDateTime(when)),
    ].join(' · ');

    return InkWell(
      key: ValueKey<String>('history-${order.id}'),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(14, 14, 16, 14),
        child: Row(
          children: <Widget>[
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: NxRadius.smallAll,
                color: delivered ? t.primarySoft : t.surfaceMuted,
              ),
              child: Icon(
                delivered ? Icons.check_rounded : Icons.close_rounded,
                size: 22,
                color: delivered ? t.primary : t.inkMuted,
              ),
            ),
            const SizedBox(width: NxSpace.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.titleSmall.copyWith(
                      color: t.ink,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subline,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.bodySmall.copyWith(color: t.inkMuted),
                  ),
                  const SizedBox(height: 6),
                  if (!delivered)
                    NxStatusChip(
                      label: order.statusText(l10n),
                      tone: order.statusTone == StatusTone.negative
                          ? NxTone.danger
                          : NxTone.neutral,
                    )
                  else
                    Text(
                      order.isCashOnDelivery
                          ? l10n.historyCashTaken(
                              formatAmount(l10n, order.collectCash),
                            )
                          : l10n.prepaidLabel,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.caption.copyWith(
                        color: order.isCashOnDelivery
                            ? t.actionText
                            : t.inkMuted,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                ],
              ),
            ),
            if (delivered) ...<Widget>[
              const SizedBox(width: NxSpace.sm),
              NxMoneyText(
                order.earnings,
                sign: '+',
                split: false,
                colour: t.primary,
                style: NxType.titleSmall.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
