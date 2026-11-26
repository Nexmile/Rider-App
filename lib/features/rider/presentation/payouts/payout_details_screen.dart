import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_surface.dart';
import '../../../../core/widgets/step_tracker.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/payout_models.dart';
import '../../state/payout_controller.dart';
import '../orders/order_formatting.dart';
import 'payout_formatting.dart';

/// One week's pay, line by line.
///
/// Renders the list row it was handed immediately and refetches in the
/// background, exactly as the order details screen does.
///
/// Two rules hold regardless of what else changes here:
///
/// * Nothing says the money was sent unless the status is `paid`. Until bank
///   transfers exist server-side every week is `pending`, and a rider told
///   their money is in the bank when it is not is the worst bug this screen
///   could have.
/// * Deduction labels and notes are the server's words, rendered verbatim.
///   They arrive translated, and a change of TDS rate must reach riders
///   without an app release. No deductions means no Deductions section at all.
class PayoutDetailsScreen extends StatefulWidget {
  const PayoutDetailsScreen({super.key, required this.payout});

  final Payout payout;

  @override
  State<PayoutDetailsScreen> createState() => _PayoutDetailsScreenState();
}

class _PayoutDetailsScreenState extends State<PayoutDetailsScreen> {
  late Payout _payout = widget.payout;
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refresh());
  }

  Future<void> _refresh() async {
    final String? id = widget.payout.id;
    if (!mounted || id == null) return;
    setState(() => _isRefreshing = true);

    final Payout? fresh = await context.read<PayoutController>().details(id);

    if (!mounted) return;
    setState(() {
      if (fresh != null) _payout = fresh;
      _isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Payout payout = _payout;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.payoutDetailsTitle),
        bottom:
            _isRefreshing
                ? const PreferredSize(
                  preferredSize: Size.fromHeight(2),
                  child: LinearProgressIndicator(minHeight: 2),
                )
                : null,
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            _Hero(payout: payout),
            const SizedBox(height: 14),
            _TransferPanel(payout: payout),
            const SizedBox(height: 14),
            _Breakdown(payout: payout),
          ],
        ),
      ),
    );
  }
}

/// The amount payable, the week it is for, and its status.
class _Hero extends StatelessWidget {
  const _Hero({required this.payout});

  final Payout payout;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    const Color ink = Colors.white;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
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
                  payout.periodText(context, l10n),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              WhitePill(label: payout.statusText(l10n), solid: payout.isPaid),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            l10n.payoutNetLabel,
            style: theme.textTheme.labelMedium
                ?.copyWith(color: ink.withValues(alpha: 0.85)),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              formatAmount(l10n, payout.net),
              maxLines: 1,
              textDirection: TextDirection.ltr,
              style: theme.textTheme.displaySmall?.copyWith(
                color: ink,
                fontWeight: FontWeight.w800,
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Where the money has got to, and, above all, whether it has been sent.
class _TransferPanel extends StatelessWidget {
  const _TransferPanel({required this.payout});

  final Payout payout;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final Color accent =
        payout.isPaid
            ? (isDark ? AppColors.greenLight : AppColors.greenDeep)
            : AppColors.orangeDeep;

    final DateTime? paidAt = payout.paidAt;
    final String? reference = payout.reference;

    final String message;
    if (!payout.isPaid) {
      message = l10n.payoutNotSentNote;
    } else if (paidAt != null) {
      message = l10n.payoutPaidOn(
        MaterialLocalizations.of(context).formatMediumDate(paidAt),
      );
    } else {
      message = l10n.payoutPaidNote;
    }

    return SurfaceCard(
      radius: AppSurface.radiusLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // "In your bank" stays grey until the status says paid: the
          // tracker never runs ahead of the transfer.
          StepTracker(
            key: const ValueKey<String>('payout-steps'),
            steps: <TrackerStep>[
              TrackerStep(l10n.payoutStepWorkedOut, Icons.calculate_rounded),
              TrackerStep(l10n.payoutStepSending, Icons.send_rounded),
              TrackerStep(l10n.payoutStepInBank, Icons.account_balance_rounded),
            ],
            done: payout.isPaid ? 3 : 1,
            nextIsLive: payout.status == PayoutStatus.processing,
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                payout.isPaid
                    ? Icons.check_circle_outline_rounded
                    : Icons.schedule_rounded,
                size: 20,
                color: accent,
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(message, style: theme.textTheme.bodyMedium)),
            ],
          ),
          // A reference is only meaningful for a transfer that happened.
          if (payout.isPaid && reference != null) ...<Widget>[
            const SizedBox(height: 12),
            Text(
              l10n.payoutReferenceLabel,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 2),
            SelectableText(
              reference,
              textDirection: TextDirection.ltr,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Earned, carried in, taken out, payable.
class _Breakdown extends StatelessWidget {
  const _Breakdown({required this.payout});

  final Payout payout;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);

    return SurfaceCard(
      radius: AppSurface.radiusLarge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _Line(
            label: l10n.payoutDeliveryEarnings,
            amount: formatAmount(l10n, payout.deliveryEarnings),
          ),
          if (payout.hasReferralEarnings)
            _Line(
              label: l10n.payoutReferralEarnings,
              amount: formatAmount(l10n, payout.referralEarnings),
            ),
          // A rider who earned ₹40 last week and saw nothing arrive deserves
          // to see where it went.
          if (payout.hasCarriedIn)
            _Line(
              label: l10n.payoutCarriedIn,
              amount: formatAmount(l10n, payout.carriedIn),
              note: l10n.payoutCarriedInNote,
            ),
          const Divider(height: 24),
          _Line(
            label: l10n.payoutGross,
            amount: formatAmount(l10n, payout.gross),
            strong: true,
          ),
          if (payout.hasDeductions) ...<Widget>[
            const SizedBox(height: 16),
            Text(
              l10n.payoutDeductions,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            for (final PayoutDeduction deduction in payout.deductions)
              _Line(
                label: deduction.label,
                amount: '−${formatAmount(l10n, deduction.amount)}',
                note: deduction.note,
                colour: theme.colorScheme.error,
              ),
          ],
          const Divider(height: 24),
          _Line(
            label: l10n.payoutNetLabel,
            amount: formatAmount(l10n, payout.net),
            strong: true,
          ),
        ],
      ),
    );
  }
}

class _Line extends StatelessWidget {
  const _Line({
    required this.label,
    required this.amount,
    this.note,
    this.strong = false,
    this.colour,
  });

  final String label;
  final String amount;
  final String? note;
  final bool strong;

  /// For the amount only: deductions in red.
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle? style = (strong
            ? theme.textTheme.titleMedium
            : theme.textTheme.bodyLarge)
        ?.copyWith(fontWeight: strong ? FontWeight.w800 : null);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Text(label, style: style)),
              const SizedBox(width: 12),
              Text(
                amount,
                textDirection: TextDirection.ltr,
                style: colour == null ? style : style?.copyWith(color: colour),
              ),
            ],
          ),
          if (note != null) ...<Widget>[
            const SizedBox(height: 4),
            Text(
              note!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
