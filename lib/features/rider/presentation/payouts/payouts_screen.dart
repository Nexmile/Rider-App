import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/design/design.dart';
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

  void _open(Payout payout) => Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => PayoutDetailsScreen(payout: payout),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final PayoutController controller = context.watch<PayoutController>();
    final List<Payout> payouts = controller.payouts;

    // Weeks grouped by the month they end in, newest first as the server
    // sends them.
    final List<List<int>> months = <List<int>>[];
    for (int i = 0; i < payouts.length; i++) {
      if (i == 0 || _month(payouts[i]) != _month(payouts[i - 1])) {
        months.add(<int>[]);
      }
      months.last.add(i);
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.payoutsTitle)),
      body: RefreshIndicator(
        onRefresh: () => controller.load(),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            NxSpace.screen,
            NxSpace.xs,
            NxSpace.screen,
            NxSpace.xxl,
          ),
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            if (controller.failure != null) ...<Widget>[
              OrderBanner(message: controller.failure!.message(l10n)),
              const SizedBox(height: NxSpace.md),
            ],
            if (!controller.hasLoaded && payouts.isEmpty)
              controller.failure == null
                  ? const NxSkeletonList(count: 2, height: 120)
                  : const SizedBox.shrink()
            else if (payouts.isEmpty)
              OrderEmptyState(
                icon: Icons.account_balance_wallet_outlined,
                title: l10n.payoutsEmptyTitle,
                body: l10n.payoutsEmptyBody,
              )
            else ...<Widget>[
              _Summary(payouts: payouts),
              if (payouts.length > 1) ...<Widget>[
                const SizedBox(height: NxSpace.md),
                _WeeksChart(payouts: payouts.take(6).toList()),
              ],
              for (final List<int> month in months) ...<Widget>[
                const SizedBox(height: NxSpace.lg),
                NxSectionHeader(title: _monthLabel(context, payouts[month.first])),
                NxCard(
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: <Widget>[
                      for (int k = 0; k < month.length; k++) ...<Widget>[
                        if (k > 0) Divider(height: 1, color: t.hairline),
                        _WeekRow(
                          key: ValueKey<String>('payout-week-${month[k]}'),
                          payout: payouts[month[k]],
                          onTap: () => _open(payouts[month[k]]),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
              const SizedBox(height: NxSpace.lg),
              const _HowItWorks(),
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
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final Payout latest = payouts.first;
    final Color ink = t.onNight;

    double total(bool paid) => payouts
        .where((Payout p) => p.isPaid == paid)
        .fold<double>(0, (double sum, Payout p) => sum + p.net);

    Widget tile(String label, double amount, Color colour) => Expanded(
          child: Container(
            padding: const EdgeInsets.all(NxSpace.sm),
            decoration: BoxDecoration(
              color: ink.withValues(alpha: 0.07),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(
                    color: ink.withValues(alpha: 0.65),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: NxMoneyText(
                    amount,
                    split: false,
                    colour: colour,
                    style: NxType.title.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

    return NxHeroCard(
      key: const ValueKey<String>('payouts-summary'),
      gradient: t.darkHeroGradient,
      glow: t.nightDeep,
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
                  style: NxType.bodySmall.copyWith(
                    color: ink.withValues(alpha: 0.7),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: NxSpace.xs),
              PayoutStatusPill(payout: latest),
            ],
          ),
          const SizedBox(height: NxSpace.sm),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: NxMoneyText(
              latest.net,
              colour: ink,
              style: NxType.display.copyWith(fontSize: 42),
            ),
          ),
          const SizedBox(height: NxSpace.md),
          Row(
            children: <Widget>[
              tile(l10n.payoutsPaidSoFar, total(true), t.lime),
              const SizedBox(width: 10),
              tile(l10n.payoutsNotYetSent, total(false), ink),
            ],
          ),
        ],
      ),
    );
  }
}

/// The amount payable for each of the last few weeks, as bars: the newest
/// at the right, in the strongest green.
class _WeeksChart extends StatelessWidget {
  const _WeeksChart({required this.payouts});

  /// Newest first, as the server sends them.
  final List<Payout> payouts;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final List<Payout> weeks = payouts.reversed.toList();
    final double top = weeks.fold<double>(
      0,
      (double most, Payout p) => p.net > most ? p.net : most,
    );
    final MaterialLocalizations dates = MaterialLocalizations.of(context);

    Color bar(int i) => i == weeks.length - 1
        ? t.primary
        : i == weeks.length - 2
            ? t.primaryBright.withValues(alpha: 0.55)
            : t.primary.withValues(alpha: 0.16);

    return NxCard(
      key: const ValueKey<String>('payouts-chart'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            l10n.payoutsRecentWeeks,
            style: NxType.titleSmall.copyWith(
              color: t.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: NxSpace.md),
          SizedBox(
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                for (int i = 0; i < weeks.length; i++) ...<Widget>[
                  if (i > 0) const SizedBox(width: NxSpace.sm),
                  Expanded(
                    child: Semantics(
                      label: '${weeks[i].periodText(context, l10n)}: '
                          '${formatAmount(l10n, weeks[i].net)}',
                      child: FractionallySizedBox(
                        heightFactor: top <= 0
                            ? 0.04
                            : (weeks[i].net / top).clamp(0.04, 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: bar(i),
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(8),
                              bottom: Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: NxSpace.xs),
          Row(
            children: <Widget>[
              for (int i = 0; i < weeks.length; i++) ...<Widget>[
                if (i > 0) const SizedBox(width: NxSpace.sm),
                Expanded(
                  child: Text(
                    weeks[i].periodStart == null
                        ? '—'
                        : dates.formatShortMonthDay(weeks[i].periodStart!),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: NxType.caption.copyWith(
                      fontSize: 11,
                      color: i == weeks.length - 1 ? t.ink : t.inkMuted,
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

/// One week: its dates, whether it has been sent, and the amount payable.
class _WeekRow extends StatelessWidget {
  const _WeekRow({super.key, required this.payout, required this.onTap});

  final Payout payout;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    // Green only for money that has moved.
    final Color tint = payout.isPaid ? t.primary : t.actionText;

    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: NxSpace.tapTarget + 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: NxSpace.md,
            vertical: NxSpace.sm,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: payout.isPaid ? t.primarySoft : t.actionSoft,
                  borderRadius: NxRadius.smallAll,
                ),
                child: Icon(
                  payout.isPaid ? Icons.check_rounded : Icons.schedule_rounded,
                  size: 20,
                  color: tint,
                ),
              ),
              const SizedBox(width: NxSpace.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      payout.periodText(context, l10n),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.titleSmall.copyWith(
                        fontSize: 15,
                        color: t.ink,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      payout.statusText(l10n),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.caption.copyWith(
                        color: tint,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: NxSpace.xs),
              NxMoneyText(
                payout.net,
                split: false,
                colour: t.ink,
                style: NxType.titleSmall.copyWith(fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A plain note on how a week becomes money in the bank.
class _HowItWorks extends StatelessWidget {
  const _HowItWorks();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    return Container(
      padding: const EdgeInsets.all(NxSpace.md),
      decoration: BoxDecoration(
        color: t.infoSoft,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: t.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.info_outline_rounded, size: 18, color: t.info),
          ),
          const SizedBox(width: NxSpace.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  l10n.payoutsHowTitle,
                  style: NxType.titleSmall.copyWith(
                    fontSize: 14,
                    color: t.infoInk,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  l10n.payoutsHowBody,
                  style: NxType.bodySmall.copyWith(color: t.infoInk),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
