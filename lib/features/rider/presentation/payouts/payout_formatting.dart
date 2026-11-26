import 'package:flutter/material.dart';

import '../../../../core/design/design.dart';
import '../../../../core/widgets/info_tile.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/payout_models.dart';

/// How a payout reads on screen, shared by the list and the details screen so
/// the two can never disagree about whether a week has been paid.
extension PayoutPresentation on Payout {
  /// "Paid" only for a completed transfer. Every other status says, in so many
  /// words, that the money has not arrived.
  String statusText(AppLocalizations l10n) {
    switch (status) {
      case PayoutStatus.paid:
        return l10n.payoutStatusPaid;
      case PayoutStatus.pending:
        return l10n.payoutStatusPending;
      case PayoutStatus.processing:
        return l10n.payoutStatusProcessing;
    }
  }

  /// Green is reserved for money that has moved.
  StatusTone get statusTone =>
      isPaid ? StatusTone.positive : StatusTone.warning;

  /// "Sep 7 – Sep 13", in the rider's language where Flutter has one.
  String periodText(BuildContext context, AppLocalizations l10n) {
    final MaterialLocalizations dates = MaterialLocalizations.of(context);
    final DateTime? start = periodStart;
    final DateTime? end = periodEnd;
    return l10n.payoutPeriod(
      start == null ? '—' : dates.formatShortMonthDay(start),
      end == null ? '—' : dates.formatShortMonthDay(end),
    );
  }
}

/// A payout's status on a dark card: lime once the money has moved, orange
/// while it has not.
class PayoutStatusPill extends StatelessWidget {
  const PayoutStatusPill({super.key, required this.payout});

  final Payout payout;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final NxTokens t = context.nx;
    final Color fill = payout.isPaid ? t.lime : t.action;
    final Color ink = payout.isPaid ? t.onLime : t.onAction;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 160),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(color: fill, borderRadius: NxRadius.pillAll),
        child: Text(
          payout.statusText(l10n),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: NxType.caption.copyWith(color: ink, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
