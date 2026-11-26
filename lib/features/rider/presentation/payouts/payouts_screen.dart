import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_surface.dart';
import '../../../../core/widgets/info_tile.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/payout_models.dart';
import '../../data/rider_failure.dart';
import '../../state/payout_controller.dart';
import '../orders/order_formatting.dart';
import '../orders/widgets/order_empty_state.dart';
import 'payout_details_screen.dart';
import 'payout_formatting.dart';

/// Week by week, what the rider is owed and whether it has been sent.
class PayoutsScreen extends StatefulWidget {
  const PayoutsScreen({super.key});

  @override
  State<PayoutsScreen> createState() => _PayoutsScreenState();
}

class _PayoutsScreenState extends State<PayoutsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<PayoutController>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final PayoutController controller = context.watch<PayoutController>();
    final List<Payout> payouts = controller.payouts;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.payoutsTitle)),
      body: RefreshIndicator(
        onRefresh: () => controller.load(),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            if (controller.failure != null) ...<Widget>[
              OrderBanner(message: controller.failure!.message(l10n)),
              const SizedBox(height: 16),
            ],
            if (!controller.hasLoaded && payouts.isEmpty)
              controller.failure == null
                  ? const Padding(
                    padding: EdgeInsets.symmetric(vertical: 48),
                    child: Center(child: CircularProgressIndicator()),
                  )
                  : const SizedBox.shrink()
            else if (payouts.isEmpty)
              OrderEmptyState(
                icon: Icons.account_balance_wallet_outlined,
                title: l10n.payoutsEmptyTitle,
                body: l10n.payoutsEmptyBody,
              )
            else ...<Widget>[
              _Summary(payouts: payouts),
              const SizedBox(height: 22),
              for (int i = 0; i < payouts.length; i++) ...<Widget>[
                // A month heading wherever the month changes.
                if (i == 0 ||
                    _month(payouts[i]) != _month(payouts[i - 1])) ...<Widget>[
                  if (i > 0) const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 4, 10),
                    child: Text(
                      _monthLabel(context, payouts[i]),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                ],
                _PayoutCard(
                  payout: payouts[i],
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => PayoutDetailsScreen(payout: payouts[i]),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

/// The month a week belongs to, by the day it ends.
DateTime? _month(Payout payout) {
  final DateTime? day = payout.periodEnd ?? payout.periodStart;
  return day == null ? null : DateTime(day.year, day.month);
}

String _monthLabel(BuildContext context, Payout payout) {
  final DateTime? month = _month(payout);
  return month == null
      ? '—'
      : MaterialLocalizations.of(context).formatMonthYear(month);
}

/// The latest week, and the two totals a rider asks about: what has reached
/// the bank, and what is still to come. "Paid" counts only transfers that
/// have gone through.
class _Summary extends StatelessWidget {
  const _Summary({required this.payouts});

  final List<Payout> payouts;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Payout latest = payouts.first;
    const Color ink = Colors.white;

    double total(bool paid) => payouts
        .where((Payout p) => p.isPaid == paid)
        .fold<double>(0, (double sum, Payout p) => sum + p.net);

    Widget figure(String label, double amount) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium
                  ?.copyWith(color: ink.withValues(alpha: 0.85)),
            ),
            const SizedBox(height: 2),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                formatAmount(l10n, amount),
                maxLines: 1,
                textDirection: TextDirection.ltr,
                style: theme.textTheme.titleLarge
                    ?.copyWith(color: ink, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        );

    return Container(
      key: const ValueKey<String>('payouts-summary'),
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSurface.radiusLarge),
        gradient: const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: <Color>[Color(0xFF1F6E08), AppColors.greenDeep],
        ),
        boxShadow: AppSurface.hero(context, AppColors.greenDeep),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  '${l10n.payoutsLatestWeek} · ${latest.periodText(context, l10n)}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: ink.withValues(alpha: 0.9),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              WhitePill(
                label: latest.statusText(l10n),
                solid: latest.isPaid,
              ),
            ],
          ),
          const SizedBox(height: 6),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              formatAmount(l10n, latest.net),
              maxLines: 1,
              textDirection: TextDirection.ltr,
              style: theme.textTheme.displaySmall
                  ?.copyWith(color: ink, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(height: 14),
          Divider(height: 1, color: ink.withValues(alpha: 0.2)),
          const SizedBox(height: 14),
          Row(
            children: <Widget>[
              Expanded(child: figure(l10n.payoutsPaidSoFar, total(true))),
              const SizedBox(width: 16),
              Expanded(child: figure(l10n.payoutsNotYetSent, total(false))),
            ],
          ),
        ],
      ),
    );
  }
}

/// One week: the dates, the status, and the amount payable.
class _PayoutCard extends StatelessWidget {
  const _PayoutCard({required this.payout, required this.onTap});

  final Payout payout;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    // Green only for money that has moved.
    final Color tint = payout.isPaid
        ? (isDark ? AppColors.greenLight : AppColors.greenDeep)
        : AppColors.orangeDeep;

    return SurfaceCard(
      radius: AppSurface.radiusLarge,
      onTap: onTap,
      child: Row(
        children: <Widget>[
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: tint.withValues(alpha: isDark ? 0.18 : 0.12),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              payout.isPaid
                  ? Icons.account_balance_rounded
                  : Icons.schedule_rounded,
              size: 22,
              color: tint,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  payout.periodText(context, l10n),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),
                StatusChip(
                  label: payout.statusText(l10n),
                  tone: payout.statusTone,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                formatAmount(l10n, payout.net),
                textDirection: TextDirection.ltr,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 2),
              Text(l10n.payoutNetLabel, style: theme.textTheme.bodySmall),
            ],
          ),
          const SizedBox(width: 4),
          Icon(
            Icons.chevron_right_rounded,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ],
      ),
    );
  }
}
