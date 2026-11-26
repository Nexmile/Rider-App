import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_surface.dart';
import '../../../../core/widgets/info_tile.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/order_models.dart';
import '../../data/rider_failure.dart';
import '../../state/order_controller.dart';
import 'order_details_screen.dart';
import 'order_formatting.dart';
import 'widgets/order_empty_state.dart';

/// What the rider has already done, a day at a time.
///
/// Fetched once when the tab is opened rather than polled: a finished delivery
/// does not change, and the only new row is one this app itself just created.
/// Searching filters what is already on the phone; it never asks the server.
class DeliveryHistoryScreen extends StatefulWidget {
  const DeliveryHistoryScreen({super.key});

  @override
  State<DeliveryHistoryScreen> createState() => _DeliveryHistoryScreenState();
}

class _DeliveryHistoryScreenState extends State<DeliveryHistoryScreen> {
  final TextEditingController _search = TextEditingController();
  String _query = '';

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

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final OrderController orders = context.watch<OrderController>();
    final List<RiderOrder> history = orders.history;

    final String query = _query.trim().toLowerCase();
    final List<RiderOrder> shown = query.isEmpty
        ? history
        : <RiderOrder>[
            for (final RiderOrder order in history)
              if (_matches(order, query)) order,
          ];
    final List<_Day> days = _Day.group(shown);

    return RefreshIndicator(
      onRefresh: () => orders.loadHistory(),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
        physics: const AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Text(
            l10n.historyTitle,
            style: theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 14),

          if (history.isNotEmpty) ...<Widget>[
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
            const SizedBox(height: 18),
          ],

          if (orders.historyFailure != null) ...<Widget>[
            OrderBanner(message: orders.historyFailure!.message(l10n)),
            const SizedBox(height: 16),
          ],

          if (orders.isLoadingHistory && history.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 48),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (history.isEmpty)
            OrderEmptyState(
              icon: Icons.history_rounded,
              title: l10n.historyEmptyTitle,
              body: l10n.historyEmptyBody,
            )
          else if (shown.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                l10n.historyNoMatch(_query.trim()),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            )
          else
            for (final _Day day in days) ...<Widget>[
              _DayHeader(day: day),
              const SizedBox(height: 8),
              SurfaceCard(
                padding: EdgeInsets.zero,
                radius: AppSurface.radiusLarge,
                child: Column(
                  children: <Widget>[
                    for (int i = 0; i < day.orders.length; i++) ...<Widget>[
                      if (i > 0)
                        Divider(
                          height: 1,
                          indent: 72,
                          color: AppSurface.line(context),
                        ),
                      _HistoryRow(
                        order: day.orders[i],
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) =>
                                OrderDetailsScreen(order: day.orders[i]),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
        ],
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
          e.value
            ..sort((RiderOrder a, RiderOrder b) {
              final DateTime? ta = when(a);
              final DateTime? tb = when(b);
              if (ta == null || tb == null) return 0;
              return tb.compareTo(ta);
            }),
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
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      // Both sides loose, pushed apart: the day on the left, its total at
      // the right edge, and either one shrinking if a language runs long.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
          ),
          if (delivered.isNotEmpty) ...<Widget>[
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                l10n.historyDaySummary(
                  delivered.length,
                  formatAmount(l10n, earned),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ],
      ),
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
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color green = isDark ? AppColors.greenLight : AppColors.greenDeep;
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
                shape: BoxShape.circle,
                color: (delivered ? green : theme.colorScheme.onSurfaceVariant)
                    .withValues(alpha: isDark ? 0.18 : 0.10),
              ),
              child: Icon(
                delivered ? Icons.check_rounded : Icons.close_rounded,
                size: 22,
                color: delivered ? green : theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subline,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 6),
                  if (!delivered)
                    StatusChip(
                      label: order.statusText(l10n),
                      tone: order.statusTone,
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
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: order.isCashOnDelivery
                            ? AppColors.orangeDeep
                            : theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                ],
              ),
            ),
            if (delivered) ...<Widget>[
              const SizedBox(width: 12),
              Text(
                '+${formatAmount(l10n, order.earnings)}',
                textDirection: TextDirection.ltr,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: green,
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
