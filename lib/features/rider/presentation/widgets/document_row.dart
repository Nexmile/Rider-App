import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/design/design.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../../data/document_catalogue.dart';
import '../../data/kyc_models.dart';
import '../../data/picked_document.dart';

/// One document on the KYC checklist: a thumbnail, what it is, where it
/// stands, and the one thing to do next.
///
/// The whole card is the button, the way delivery-partner apps lay out their
/// document lists: an empty card opens the upload guide, an uploaded one opens
/// the photo. Replace and remove sit in the card's menu.
class DocumentRow extends StatelessWidget {
  const DocumentRow({
    super.key,
    required this.type,
    required this.document,
    required this.isUploading,
    required this.enabled,
    required this.onPick,
    required this.onRemove,
    this.serverLabel,
    this.isRequired = true,
    this.preview,
  });

  /// The API's type slug — what the checklist is keyed on.
  final String type;

  /// The label the API supplied for this type, used when the catalogue has
  /// never heard of it. Readable English beats rendering a raw slug.
  final String? serverLabel;

  /// False for the types the API allows but does not require. They are still
  /// offered — a profile photo helps a rider get recognised at the door — but
  /// they never block the step or count against the progress line.
  final bool isRequired;

  /// The file on record, or null when this slot is still empty.
  final KycDocument? document;

  /// The file uploaded for this slot in this session, for the thumbnail.
  final PickedDocument? preview;

  final bool isUploading;

  /// False once KYC is submitted or verified: the file is locked and the row
  /// becomes a read-only receipt.
  final bool enabled;

  final ValueChanged<PickedDocument> onPick;
  final VoidCallback onRemove;

  bool get _previewIsImage =>
      preview != null && preview!.mimeType.startsWith('image/');

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    final DocumentPresentation presentation =
        DocumentCatalogue.presentationOf(type);

    // The catalogue's translated name where the type is known; otherwise the
    // server's own label, which is at least readable English, and only then
    // the raw slug.
    final String label = DocumentCatalogue.labelOf(type, l10n) ??
        _firstNonEmpty(<String?>[serverLabel, document?.label]) ??
        type;

    final KycDocument? file = document;
    final bool hasFile = file != null;
    final bool rejected = file?.isRejected ?? false;
    final String? rejectionReason = rejected ? file?.rejectionReason : null;
    const BorderRadius radius = NxRadius.cardAll;

    // Day: no outline unless something is wrong, the card's shadow is enough.
    // Night: an outline always, since a shadow vanishes on a dark ground.
    final Color? edge = rejected
        ? t.dangerBorder
        : isDark
            ? t.border
            : null;

    final VoidCallback? onTap = isUploading
        ? null
        : !hasFile
            ? (enabled ? () => _upload(context, label, presentation) : null)
            : _previewIsImage
                ? () => _view(context, label)
                : (enabled ? () => _upload(context, label, presentation) : null);

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.sm - 2),
      child: Material(
        color: Colors.transparent,
        borderRadius: radius,
        child: InkWell(
          onTap: onTap,
          borderRadius: radius,
          child: Ink(
            decoration: BoxDecoration(
              color: t.surface,
              borderRadius: radius,
              border: edge == null ? null : Border.all(color: edge, width: 1.5),
              boxShadow: t.cardShadow,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                NxSpace.sm,
                NxSpace.sm,
                NxSpace.xs - 2,
                NxSpace.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _Thumbnail(
                        icon: presentation.icon,
                        document: file,
                        preview: preview,
                      ),
                      const SizedBox(width: NxSpace.sm + 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              label,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: NxType.titleSmall.copyWith(
                                fontSize: 15,
                                color: t.ink,
                              ),
                            ),
                            const SizedBox(height: 6),
                            _Status(
                              document: file,
                              isRequired: isRequired,
                              isUploading: isUploading,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      _Trailing(
                        hasFile: hasFile,
                        enabled: enabled,
                        isUploading: isUploading,
                        canView: _previewIsImage,
                        onAdd: () => _upload(context, label, presentation),
                        onView: () => _view(context, label),
                        onReplace: () => _upload(context, label, presentation),
                        onRemove: onRemove,
                      ),
                    ],
                  ),
                  if (isUploading) ...<Widget>[
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 6),
                      child: ClipRRect(
                        borderRadius: NxRadius.pillAll,
                        child: LinearProgressIndicator(
                          minHeight: 5,
                          color: t.primaryBright,
                          backgroundColor: t.surfaceMuted,
                        ),
                      ),
                    ),
                  ],
                  if (rejectionReason != null) ...<Widget>[
                    const SizedBox(height: 12),
                    Container(
                      margin: const EdgeInsetsDirectional.only(end: 6),
                      padding: const EdgeInsets.all(NxSpace.sm - 2),
                      decoration: BoxDecoration(
                        color: t.dangerSoft,
                        borderRadius: NxRadius.smallAll,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.error_outline_rounded,
                            size: 18,
                            color: t.danger,
                          ),
                          const SizedBox(width: NxSpace.xs),
                          Expanded(
                            child: Text(
                              rejectionReason,
                              style: NxType.bodySmall.copyWith(
                                color: t.danger,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static String? _firstNonEmpty(List<String?> candidates) {
    for (final String? candidate in candidates) {
      if (candidate != null && candidate.trim().isNotEmpty) return candidate;
    }
    return null;
  }

  /// The photo, full screen, pinch to zoom: the rider checks the licence
  /// number is legible before an admin has to reject it for being blurred.
  Future<void> _view(BuildContext context, String label) async {
    final PickedDocument? file = preview;
    if (file == null) return;
    await showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) => Dialog(
        backgroundColor: dialogContext.nx.nightDeep,
        insetPadding: const EdgeInsets.all(NxSpace.sm),
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(borderRadius: NxRadius.cardAll),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: InteractiveViewer(
                maxScale: 5,
                child: Center(child: Image.memory(file.bytes)),
              ),
            ),
            Positioned(
              top: 8,
              left: 16,
              right: 56,
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: NxType.titleSmall.copyWith(color: Colors.white),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                icon: const Icon(Icons.close_rounded, color: Colors.white),
                tooltip: MaterialLocalizations.of(dialogContext)
                    .closeButtonTooltip,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// The guided upload sheet, then the picker it chose.
  Future<void> _upload(
    BuildContext context,
    String label,
    DocumentPresentation presentation,
  ) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ScaffoldMessengerState messenger = ScaffoldMessenger.of(context);
    final DocumentPicker picker = PlatformDocumentPicker();

    final _PickSource? source = await showModalBottomSheet<_PickSource>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: context.nx.surface,
      shape: const RoundedRectangleBorder(borderRadius: NxRadius.sheetTop),
      builder: (BuildContext sheetContext) => _UploadGuide(
        label: label,
        icon: presentation.icon,
        portrait: DocumentCatalogue.isPortrait(type),
        prefersCamera: presentation.prefersCamera,
      ),
    );

    if (source == null) return;

    final PickResult result = switch (source) {
      _PickSource.camera => await picker.pickImage(ImageSource.camera),
      _PickSource.gallery => await picker.pickImage(ImageSource.gallery),
      _PickSource.file => await picker.pickFile(),
    };

    final PickedDocument? picked = result.document;
    if (picked != null) {
      onPick(picked);
      return;
    }

    // Backing out of the camera is not an error and gets no message.
    final String? message = switch (result.failure) {
      PickFailure.tooLarge => l10n.fileTooLarge,
      PickFailure.unsupportedType => l10n.unsupportedFileType,
      PickFailure.denied => l10n.pickerUnavailable,
      PickFailure.cancelled || null => null,
    };
    if (message == null) return;

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}

enum _PickSource { camera, gallery, file }

/// The square at the start of a card: the photo once there is one, the
/// document's icon in a dashed outline while there is not.
class _Thumbnail extends StatelessWidget {
  const _Thumbnail({
    required this.icon,
    required this.document,
    required this.preview,
  });

  final IconData icon;
  final KycDocument? document;
  final PickedDocument? preview;

  static const double _size = 60;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final KycDocument? file = document;
    final PickedDocument? local = preview;
    const BorderRadius radius = NxRadius.controlAll;

    final Widget body;
    if (local != null && local.mimeType.startsWith('image/')) {
      body = ClipRRect(
        borderRadius: radius,
        child: Image.memory(
          local.bytes,
          width: _size,
          height: _size,
          fit: BoxFit.cover,
          cacheWidth: 200,
          gaplessPlayback: true,
        ),
      );
    } else if (file != null) {
      final bool pdf = (local?.mimeType ?? file.mimeType) == 'application/pdf';
      body = Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          color: pdf ? t.dangerSoft : t.primarySoft,
          borderRadius: radius,
        ),
        child: Icon(
          pdf ? Icons.picture_as_pdf_rounded : icon,
          size: 28,
          color: pdf ? t.danger : t.primary,
        ),
      );
    } else {
      body = CustomPaint(
        painter: _DashedBorder(colour: t.inkFaint, radius: NxRadius.control),
        child: Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            color: t.ground,
            borderRadius: radius,
          ),
          child: Icon(icon, size: 26, color: t.inkMuted),
        ),
      );
    }

    // A badge in the corner says the state before the words do.
    final Widget? badge = file == null
        ? null
        : file.isRejected
            ? _Badge(icon: Icons.priority_high_rounded, colour: t.danger)
            : _Badge(icon: Icons.check_rounded, colour: t.primaryBright);

    return SizedBox(
      width: _size + 6,
      height: _size + 6,
      child: Stack(
        children: <Widget>[
          Positioned(left: 0, top: 0, child: body),
          if (badge != null) Positioned(right: 0, bottom: 0, child: badge),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.icon, required this.colour});

  final IconData icon;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: colour,
        shape: BoxShape.circle,
        border: Border.all(color: context.nx.surface, width: 2),
      ),
      child: Icon(icon, size: 13, color: Colors.white),
    );
  }
}

class _DashedBorder extends CustomPainter {
  const _DashedBorder({required this.colour, required this.radius});

  final Color colour;
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = colour
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;
    final Path outline = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          (Offset.zero & size).deflate(0.7),
          Radius.circular(radius),
        ),
      );
    for (final metric in outline.computeMetrics()) {
      double distance = 0;
      while (distance < metric.length) {
        final double end = math.min(distance + 5, metric.length);
        canvas.drawPath(metric.extractPath(distance, end), paint);
        distance = end + 4;
      }
    }
  }

  @override
  bool shouldRepaint(_DashedBorder old) =>
      old.colour != colour || old.radius != radius;
}

/// Where the document stands, in words and a chip.
class _Status extends StatelessWidget {
  const _Status({
    required this.document,
    required this.isRequired,
    required this.isUploading,
  });

  final KycDocument? document;
  final bool isRequired;
  final bool isUploading;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);
    final KycDocument? file = document;

    if (isUploading) {
      return Text(
        l10n.docUploading,
        style: NxType.bodySmall.copyWith(
          color: t.primary,
          fontWeight: FontWeight.w700,
        ),
      );
    }

    if (file == null) {
      // "Required" on a document the API does not require would push a rider
      // to hunt for a cancelled cheque they do not need yet.
      return Wrap(
        spacing: 8,
        runSpacing: 4,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          NxStatusChip(
            label: isRequired ? l10n.documentRequired : l10n.documentOptional,
            tone: isRequired ? NxTone.action : NxTone.neutral,
          ),
          Text(
            l10n.docTapToAdd,
            style: NxType.bodySmall.copyWith(color: t.inkMuted),
          ),
        ],
      );
    }

    final String? size = file.sizeBytes > 0 ? _size(file.sizeBytes) : null;
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        if (file.isRejected)
          NxStatusChip(label: l10n.documentRejected, tone: NxTone.danger)
        else if (file.isApproved)
          NxStatusChip(
            label: l10n.documentApproved,
            tone: NxTone.success,
            icon: Icons.verified_rounded,
          )
        else
          NxStatusChip(label: l10n.documentUploaded, tone: NxTone.success),
        if (size != null)
          Text(
            size,
            textDirection: TextDirection.ltr,
            style: NxType.bodySmall.copyWith(color: t.inkFaint),
          ),
      ],
    );
  }

  static String _size(int bytes) {
    if (bytes < 1024 * 1024) return '${(bytes / 1024).ceil()} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}

/// The action at the end of a card: add, a spinner, or a menu.
class _Trailing extends StatelessWidget {
  const _Trailing({
    required this.hasFile,
    required this.enabled,
    required this.isUploading,
    required this.canView,
    required this.onAdd,
    required this.onView,
    required this.onReplace,
    required this.onRemove,
  });

  final bool hasFile;
  final bool enabled;
  final bool isUploading;
  final bool canView;
  final VoidCallback onAdd;
  final VoidCallback onView;
  final VoidCallback onReplace;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    if (isUploading) {
      return Padding(
        padding: const EdgeInsets.all(NxSpace.sm),
        child: SizedBox.square(
          dimension: 20,
          child: CircularProgressIndicator(strokeWidth: 2.2, color: t.primary),
        ),
      );
    }

    if (!hasFile) {
      if (!enabled) return const SizedBox(width: NxSpace.xs);
      return Padding(
        padding: const EdgeInsetsDirectional.only(end: NxSpace.xxs),
        child: IconButton(
          onPressed: onAdd,
          tooltip: l10n.uploadDocument,
          style: IconButton.styleFrom(
            backgroundColor: t.primary,
            foregroundColor: t.onPrimary,
          ),
          icon: const Icon(Icons.add_rounded),
        ),
      );
    }

    if (!enabled && !canView) return const SizedBox(width: NxSpace.xs);

    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert_rounded, color: t.inkMuted),
      onSelected: (String action) => switch (action) {
        'view' => onView(),
        'replace' => onReplace(),
        _ => onRemove(),
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        if (canView)
          PopupMenuItem<String>(
            value: 'view',
            child: _MenuRow(icon: Icons.visibility_outlined, label: l10n.docView),
          ),
        if (enabled) ...<PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'replace',
            child: _MenuRow(
              icon: Icons.refresh_rounded,
              label: l10n.replaceDocument,
            ),
          ),
          PopupMenuItem<String>(
            value: 'remove',
            child: _MenuRow(
              icon: Icons.delete_outline_rounded,
              label: l10n.removeDocument,
              colour: t.danger,
            ),
          ),
        ],
      ],
    );
  }
}

class _MenuRow extends StatelessWidget {
  const _MenuRow({required this.icon, required this.label, this.colour});

  final IconData icon;
  final String label;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon, size: 20, color: colour),
        const SizedBox(width: 12),
        Text(label, style: TextStyle(color: colour)),
      ],
    );
  }
}

/// The upload sheet: what a good photo of this document looks like, three
/// tips, and the three ways in — the likeliest one highlighted.
class _UploadGuide extends StatelessWidget {
  const _UploadGuide({
    required this.label,
    required this.icon,
    required this.portrait,
    required this.prefersCamera,
  });

  final String label;
  final IconData icon;
  final bool portrait;
  final bool prefersCamera;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    final List<String> tips = portrait
        ? <String>[l10n.docTipFace, l10n.docTipBackground, l10n.docTipNoCap]
        : prefersCamera
            ? <String>[
                l10n.docTipCorners,
                l10n.docTipGlare,
                l10n.docTipOriginal,
              ]
            : <String>[l10n.docTipFullPage, l10n.docTipGlare, l10n.docTipOriginal];

    final _PickSource preferred =
        prefersCamera ? _PickSource.camera : _PickSource.file;
    final List<_PickSource> order = prefersCamera
        ? const <_PickSource>[
            _PickSource.camera,
            _PickSource.gallery,
            _PickSource.file,
          ]
        : const <_PickSource>[
            _PickSource.file,
            _PickSource.gallery,
            _PickSource.camera,
          ];

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          NxSpace.lg,
          0,
          NxSpace.lg,
          NxSpace.lg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(label, style: NxType.title.copyWith(color: t.ink)),
            const SizedBox(height: NxSpace.xxs),
            Text(
              l10n.docSheetSubtitle,
              style: NxType.body.copyWith(color: t.inkMuted),
            ),
            const SizedBox(height: NxSpace.md),
            _GuideFrame(icon: icon, portrait: portrait),
            const SizedBox(height: NxSpace.md),
            for (final String tip in tips)
              Padding(
                padding: const EdgeInsets.only(bottom: NxSpace.sm - 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.check_circle_rounded,
                      size: 20,
                      color: t.primaryBright,
                    ),
                    const SizedBox(width: NxSpace.sm - 2),
                    Expanded(
                      child: Text(
                        tip,
                        style: NxType.body.copyWith(color: t.ink),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: NxSpace.sm - 2),
            Row(
              children: <Widget>[
                for (int i = 0; i < order.length; i++) ...<Widget>[
                  if (i > 0) const SizedBox(width: NxSpace.sm - 2),
                  Expanded(
                    child: _SourceTile(
                      source: order[i],
                      highlighted: order[i] == preferred,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// A mock of the document inside camera-style corner brackets: the picture of
/// "fill the frame, all four corners in".
class _GuideFrame extends StatelessWidget {
  const _GuideFrame({required this.icon, required this.portrait});

  final IconData icon;
  final bool portrait;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;

    final Widget subject = portrait
        ? Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: t.surface,
              border: Border.all(color: t.primary, width: 2),
            ),
            child: Icon(Icons.face_rounded, size: 56, color: t.inkMuted),
          )
        : Container(
            width: 190,
            height: 110,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: t.surface,
              borderRadius: NxRadius.smallAll,
              boxShadow: NxShadows.floating,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 44,
                  height: 54,
                  decoration: BoxDecoration(
                    color: t.primarySoft,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: t.primary),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (final double width in <double>[1, 0.8, 0.6])
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: FractionallySizedBox(
                            widthFactor: width,
                            child: Container(
                              height: 7,
                              decoration: BoxDecoration(
                                color: t.surfaceMuted,
                                borderRadius: NxRadius.pillAll,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );

    return Container(
      height: 168,
      decoration: BoxDecoration(
        color: t.primarySoft,
        borderRadius: NxRadius.cardAll,
      ),
      child: Center(
        child: CustomPaint(
          foregroundPainter: _Brackets(colour: t.primary),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: subject,
          ),
        ),
      ),
    );
  }
}

class _Brackets extends CustomPainter {
  const _Brackets({required this.colour});

  final Color colour;

  @override
  void paint(Canvas canvas, Size size) {
    const double arm = 18;
    final Paint paint = Paint()
      ..color = colour
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    final double w = size.width;
    final double h = size.height;
    for (final (Offset corner, Offset dx, Offset dy) in <(Offset, Offset, Offset)>[
      (Offset.zero, const Offset(arm, 0), const Offset(0, arm)),
      (Offset(w, 0), const Offset(-arm, 0), const Offset(0, arm)),
      (Offset(0, h), const Offset(arm, 0), const Offset(0, -arm)),
      (Offset(w, h), const Offset(-arm, 0), const Offset(0, -arm)),
    ]) {
      canvas.drawLine(corner, corner + dx, paint);
      canvas.drawLine(corner, corner + dy, paint);
    }
  }

  @override
  bool shouldRepaint(_Brackets old) => old.colour != colour;
}

class _SourceTile extends StatelessWidget {
  const _SourceTile({required this.source, required this.highlighted});

  final _PickSource source;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    final (IconData icon, String label) = switch (source) {
      _PickSource.camera => (Icons.photo_camera_rounded, l10n.docSourceCamera),
      _PickSource.gallery => (Icons.photo_library_rounded, l10n.docSourceGallery),
      _PickSource.file => (Icons.upload_file_rounded, l10n.docSourceFile),
    };
    const BorderRadius radius = NxRadius.cardAll;
    final Color accent = t.primary;

    return Material(
      color: highlighted ? t.primarySoft : t.ground,
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: () => Navigator.of(context).pop(source),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: radius,
            border: Border.all(
              color: highlighted ? accent : t.border,
              width: highlighted ? 1.8 : 1.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: highlighted
                        ? accent
                        : accent.withValues(alpha: 0.12),
                  ),
                  child: Icon(
                    icon,
                    color: highlighted ? t.onPrimary : accent,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: NxType.caption.copyWith(
                    fontSize: 13,
                    color: t.ink,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
