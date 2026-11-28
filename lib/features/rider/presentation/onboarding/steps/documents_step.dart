import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../../core/design/design.dart';
import '../../../../../generated/l10n/app_localizations.dart';
import '../../../data/document_catalogue.dart';
import '../../../data/kyc_models.dart';
import '../../../data/picked_document.dart';
import '../../../data/rider_failure.dart';
import '../../../state/rider_controller.dart';
import '../../widgets/document_row.dart';
import '../onboarding_scaffold.dart';
import '../onboarding_screen.dart';

/// Step 6 — the document checklist.
///
/// The list is entirely the server's: `allowed_documents` decides what is
/// asked for, in what order, and `missing_documents` decides what is still
/// outstanding. Nothing here hard-codes "six documents" — retiring the PAN
/// card or adding a police verification is a backend change, and this screen
/// picks it up on the next fetch.
class DocumentsStep extends StatelessWidget {
  const DocumentsStep({super.key, required this.context});

  final OnboardingStepContext context;

  @override
  Widget build(BuildContext buildContext) {
    final AppLocalizations l10n = AppLocalizations.of(buildContext);
    final OnboardingStepContext step = context;
    final RiderController rider = step.rider;
    final KycOverview kyc = rider.kyc;

    final List<KycDocumentType> types = kyc.allowedDocuments;
    final bool everythingUploaded =
        types.isNotEmpty && kyc.missingDocuments.isEmpty;

    return OnboardingScaffold(
      stepIndex: step.index,
      stepCount: step.total,
      icon: Icons.folder_copy_rounded,
      bodyInCard: false,
      title: l10n.stepDocumentsTitle,
      subtitle: l10n.stepDocumentsSubtitle,
      onBack: step.onBack,
      // Never busy: an upload spins on its own row, so the rest of the
      // checklist stays usable while one file is in flight.
      isBusy: false,
      banner: step.banner,
      primaryLabel: l10n.saveAndContinue,
      // Refuses to advance until every requested document is on file. The API
      // would refuse the submit anyway; blocking here means the rider finds out
      // on the screen that can fix it.
      onPrimary: everythingUploaded ? () => step.onResult(null) : null,
      children: <Widget>[
        _Summary(
          done: kyc.uploadedCount,
          total: kyc.requiredCount,
          allDone: everythingUploaded,
        ),
        for (final DocumentGroup group in DocumentGroup.values)
          if (types.any(
            (KycDocumentType t) => DocumentCatalogue.groupOf(t.type) == group,
          )) ...<Widget>[
            _GroupHeading(group: group),
            for (final KycDocumentType type in types)
              if (DocumentCatalogue.groupOf(type.type) == group)
                DocumentRow(
                  type: type.type,
                  serverLabel: type.label,
                  // The API allows more types than it requires — a bank proof
                  // and a profile photo are optional extras. Both are offered,
                  // but only the required ones are allowed to block the step.
                  isRequired: kyc.isRequired(type.type),
                  document: kyc.documentOf(type.type),
                  preview: rider.previewOf(type.type),
                  isUploading: rider.isUploading(type.type),
                  enabled: rider.canEditDocuments,
                  onPick: (PickedDocument file) =>
                      _upload(buildContext, rider, type.type, file),
                  onRemove: () => _remove(buildContext, rider, type.type),
                ),
          ],
        if (types.isEmpty)
          NxEmptyState(
            icon: Icons.cloud_off_rounded,
            title: l10n.couldNotLoadAccount,
            tone: NxTone.neutral,
          ),
      ],
    );
  }

  Future<void> _upload(
    BuildContext buildContext,
    RiderController rider,
    String type,
    PickedDocument file,
  ) async {
    final ScaffoldMessengerState messenger =
        ScaffoldMessenger.of(buildContext);
    final AppLocalizations l10n = AppLocalizations.of(buildContext);

    final RiderFailure? failure =
        await rider.uploadDocument(type: type, file: file);
    if (failure == null) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(failure.message(l10n))));
  }

  Future<void> _remove(
    BuildContext buildContext,
    RiderController rider,
    String type,
  ) async {
    final ScaffoldMessengerState messenger =
        ScaffoldMessenger.of(buildContext);
    final AppLocalizations l10n = AppLocalizations.of(buildContext);

    final RiderFailure? failure = await rider.deleteDocument(type);
    if (failure == null) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(failure.message(l10n))));
  }
}

/// The top of the checklist: a ring that fills as documents go up, the
/// count, and a tip — or, once nothing required is missing, the way on.
class _Summary extends StatelessWidget {
  const _Summary({
    required this.done,
    required this.total,
    required this.allDone,
  });

  final int done;
  final int total;
  final bool allDone;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);
    final double fraction = total == 0 ? 0 : (done / total).clamp(0.0, 1.0);

    return NxCard(
      color: allDone ? t.primarySoft : null,
      child: Row(
        children: <Widget>[
          SizedBox.square(
            dimension: 64,
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(end: fraction),
              duration: AppMotion.medium,
              curve: AppMotion.change,
              builder: (BuildContext context, double value, _) => CustomPaint(
                painter: _RingPainter(
                  fraction: value,
                  track: allDone ? t.surface : t.surfaceMuted,
                  fill: t.primaryBright,
                ),
                child: Center(
                  child: allDone
                      ? Icon(Icons.check_rounded, color: t.primary, size: 30)
                      : Text(
                          '$done/$total',
                          textDirection: TextDirection.ltr,
                          style: NxType.titleSmall.copyWith(
                            color: t.ink,
                            fontWeight: FontWeight.w800,
                            fontFeatures: const <FontFeature>[
                              FontFeature.tabularFigures(),
                            ],
                          ),
                        ),
                ),
              ),
            ),
          ),
          const SizedBox(width: NxSpace.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  l10n.documentsProgress(done, total),
                  style: NxType.titleSmall.copyWith(
                    color: allDone ? t.primary : t.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: NxSpace.xxs),
                Text(
                  allDone ? l10n.docsAllDone : l10n.docsTip,
                  style: NxType.bodySmall.copyWith(
                    color: t.inkMuted,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  const _RingPainter({
    required this.fraction,
    required this.track,
    required this.fill,
  });

  final double fraction;
  final Color track;
  final Color fill;

  @override
  void paint(Canvas canvas, Size size) {
    const double stroke = 7;
    final Rect rect = (Offset.zero & size).deflate(stroke / 2);
    canvas.drawArc(
      rect,
      0,
      math.pi * 2,
      false,
      Paint()
        ..color = track
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke,
    );
    if (fraction <= 0) return;
    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * 2 * fraction,
      false,
      Paint()
        ..color = fill
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.fraction != fraction || old.track != track || old.fill != fill;
}

class _GroupHeading extends StatelessWidget {
  const _GroupHeading({required this.group});

  final DocumentGroup group;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String title = switch (group) {
      DocumentGroup.identity => l10n.docGroupIdentity,
      DocumentGroup.vehicle => l10n.docGroupVehicle,
      DocumentGroup.more => l10n.docGroupMore,
    };
    return Padding(
      padding: const EdgeInsets.only(top: NxSpace.lg + 2),
      child: NxSectionHeader(title: title),
    );
  }
}
