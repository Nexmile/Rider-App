import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/design/design.dart';
import '../../../../generated/l10n/app_localizations.dart';

/// Text field for the onboarding wizard.
///
/// Shares `AuthTextField`'s layout — static label above the box, LTR content —
/// for the same reasons: a floating label crushes Devanagari and Tamil vowel
/// marks into a 12sp slot, and a licence or account number is itself
/// left-to-right in every language.
///
/// The one thing it adds is [serverError]. A 422 from `PATCH /v1/rider/kyc/details`
/// names the field it rejected, and that error has to land on the right box
/// rather than in a banner at the bottom of a five-field form.
class RiderTextField extends StatelessWidget {
  const RiderTextField({
    super.key,
    required this.label,
    required this.controller,
    this.hint,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.maxLength,
    this.validator,
    this.serverError,
    this.enabled = true,
    this.prefixIcon,
    this.helper,
    this.onChanged,
  });

  final String label;
  final TextEditingController controller;
  final String? hint;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final FormFieldValidator<String>? validator;

  /// Error the API recorded against this field on the last 422. Shown until
  /// the rider edits the box, at which point the form clears it.
  final String? serverError;

  final bool enabled;
  final IconData? prefixIcon;
  final String? helper;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.md + 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _FieldLabel(label),
          TextFormField(
            controller: controller,
            enabled: enabled,
            keyboardType: keyboardType,
            textCapitalization: textCapitalization,
            inputFormatters: inputFormatters,
            maxLength: maxLength,
            onChanged: onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textDirection: TextDirection.ltr,
            // The server's verdict outranks the local one: it saw the value
            // the API actually stores, and a client rule can only ever be an
            // approximation of it.
            validator: (String? value) =>
                serverError ?? validator?.call(value),
            style: NxType.body.copyWith(color: t.ink),
            decoration: InputDecoration(
              hintText: hint,
              hintMaxLines: 1,
              counterText: '',
              hintTextDirection: TextDirection.ltr,
              helperText: helper,
              helperMaxLines: 2,
              prefixIcon:
                  prefixIcon == null ? null : Icon(prefixIcon, size: 21),
              errorMaxLines: 3,
              errorText: serverError,
            ),
          ),
        ],
      ),
    );
  }
}

/// Read-only field that opens a date picker.
///
/// A `TextField` with a picker rather than a bare button so it sits in the
/// same column rhythm as the text fields around it and carries the same label,
/// error and helper affordances.
class RiderDateField extends StatelessWidget {
  const RiderDateField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.firstDate,
    required this.lastDate,
    this.serverError,
    this.errorText,
    this.enabled = true,
    this.helper,
  });

  final String label;
  final DateTime? value;
  final ValueChanged<DateTime> onChanged;
  final DateTime firstDate;
  final DateTime lastDate;
  final String? serverError;

  /// Locally-derived error — "this date has already passed", say. Shown only
  /// when there is no [serverError] to show instead.
  final String? errorText;

  final bool enabled;
  final String? helper;

  Future<void> _pick(BuildContext context) async {
    final DateTime initial = value ?? _clamp(DateTime.now());
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (picked != null) onChanged(picked);
  }

  /// `showDatePicker` asserts when the initial date falls outside the range,
  /// which is exactly what happens on the date-of-birth field: today is later
  /// than the newest allowed birth date.
  DateTime _clamp(DateTime date) {
    if (date.isBefore(firstDate)) return firstDate;
    if (date.isAfter(lastDate)) return lastDate;
    return date;
  }

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String? error = serverError ?? errorText;

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.md + 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _FieldLabel(label),
          InkWell(
            onTap: enabled ? () => _pick(context) : null,
            borderRadius: NxRadius.controlAll,
            child: InputDecorator(
              isEmpty: value == null,
              decoration: InputDecoration(
                helperText: helper,
                helperMaxLines: 2,
                errorText: error,
                errorMaxLines: 3,
                prefixIcon: const Icon(Icons.event_outlined, size: 21),
                suffixIcon: const Icon(Icons.expand_more_rounded, size: 22),
              ),
              child: Text(
                value == null ? l10n.selectDate : formatDate(value!),
                style: NxType.body.copyWith(
                  color: value == null ? t.inkFaint : t.ink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// `DD MMM YYYY` with a Latin-digit month abbreviation.
///
/// Deliberately not `intl`'s locale-aware formatter: this string is read back
/// against a printed licence or an RC book, both of which carry the date in
/// exactly this form, and a Tamil or Devanagari rendering of it would be
/// harder to check rather than easier.
String formatDate(DateTime date) {
  const List<String> months = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  final String day = date.day.toString().padLeft(2, '0');
  return '$day ${months[date.month - 1]} ${date.year}';
}

/// Single-choice picker: a grid of tiles when each option has an icon (the
/// vehicle), a wrap of pills when it does not.
///
/// A `DropdownButton` would be the obvious choice, but five options fit on two
/// rows, and a tile is one tap instead of two — which matters on a form the
/// rider fills in once, standing next to their bike.
class RiderChoiceField<T> extends StatelessWidget {
  const RiderChoiceField({
    super.key,
    required this.label,
    required this.options,
    required this.labelOf,
    required this.value,
    required this.onChanged,
    this.iconOf,
    this.errorText,
    this.enabled = true,
  });

  final String label;
  final List<T> options;
  final String Function(T) labelOf;
  final IconData Function(T)? iconOf;
  final T? value;
  final ValueChanged<T> onChanged;
  final String? errorText;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final IconData Function(T)? icon = iconOf;

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.md + 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _FieldLabel(label),
          if (icon != null)
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints box) {
                // Three to a row on a phone, two when the text is large
                // enough that a label would not fit a third of the width.
                final bool roomy = MediaQuery.textScalerOf(context).scale(1) < 1.3;
                final int perRow = roomy ? 3 : 2;
                const double gap = NxSpace.xs + 2;
                final double width = (box.maxWidth - gap * (perRow - 1)) / perRow;
                return Wrap(
                  spacing: gap,
                  runSpacing: gap,
                  children: <Widget>[
                    for (final T option in options)
                      SizedBox(
                        width: width,
                        child: _ChoiceTile(
                          label: labelOf(option),
                          icon: icon(option),
                          selected: option == value,
                          enabled: enabled,
                          onTap: () => onChanged(option),
                        ),
                      ),
                  ],
                );
              },
            )
          else
            Wrap(
              spacing: NxSpace.xs + 2,
              runSpacing: NxSpace.xs + 2,
              children: <Widget>[
                for (final T option in options)
                  _ChoicePill(
                    label: labelOf(option),
                    selected: option == value,
                    enabled: enabled,
                    onTap: () => onChanged(option),
                  ),
              ],
            ),
          if (errorText != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: NxSpace.xxs,
                top: NxSpace.xs,
              ),
              child: Text(
                errorText!,
                style: NxType.bodySmall.copyWith(color: t.danger),
              ),
            ),
        ],
      ),
    );
  }
}

/// The label over a field: small, bold, muted. Static rather than floating,
/// for the Indic vowel marks a floating label crushes.
class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: NxSpace.xxs,
        bottom: NxSpace.xs,
      ),
      child: Text(
        text,
        style: NxType.caption.copyWith(
          fontSize: 13,
          color: context.nx.inkMuted,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

/// One option as a tile: the icon large, the name under it, a tick in the
/// corner once chosen.
class _ChoiceTile extends StatelessWidget {
  const _ChoiceTile({
    required this.label,
    required this.icon,
    required this.selected,
    required this.enabled,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Material(
      color: selected ? t.primarySoft : t.surface,
      borderRadius: NxRadius.controlAll,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: NxRadius.controlAll,
        child: AnimatedContainer(
          duration: AppMotion.quick,
          curve: AppMotion.change,
          constraints: const BoxConstraints(minHeight: 92),
          padding: const EdgeInsets.fromLTRB(
            NxSpace.xs,
            NxSpace.sm + 2,
            NxSpace.xs,
            NxSpace.sm,
          ),
          decoration: BoxDecoration(
            borderRadius: NxRadius.controlAll,
            border: Border.all(
              color: selected ? t.primary : t.border,
              width: selected ? 1.8 : 1.2,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 28,
                      color: selected ? t.primary : t.inkMuted,
                    ),
                    const SizedBox(height: NxSpace.xs),
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: NxType.caption.copyWith(
                        fontSize: 13,
                        color: selected ? t.primary : t.ink,
                        fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              if (selected)
                PositionedDirectional(
                  top: -6,
                  end: -2,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: t.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check_rounded, size: 14, color: t.onPrimary),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChoicePill extends StatelessWidget {
  const _ChoicePill({
    required this.label,
    required this.selected,
    required this.enabled,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Material(
      color: selected ? t.primarySoft : t.surface,
      borderRadius: NxRadius.pillAll,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: NxRadius.pillAll,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: NxRadius.pillAll,
            border: Border.all(
              color: selected ? t.primary : t.border,
              width: selected ? 1.6 : 1.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: NxSpace.md,
              vertical: NxSpace.sm - 2,
            ),
            child: Text(
              label,
              style: NxType.caption.copyWith(
                fontSize: 14,
                color: selected ? t.primary : t.ink,
                fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A short explanatory line in place of fields the wizard has just hidden.
///
/// The wizard is a column of things to fill in, so removing two of them leaves
/// a hole that reads as a bug. This says what happened and why, in the place
/// the fields would have been.
class RiderNote extends StatelessWidget {
  const RiderNote({super.key, required this.text, this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;

    return Padding(
      padding: const EdgeInsets.only(bottom: NxSpace.md + 2),
      child: Container(
        padding: const EdgeInsets.all(NxSpace.sm + 2),
        decoration: BoxDecoration(
          color: t.infoSoft,
          borderRadius: NxRadius.controlAll,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon ?? Icons.info_outline_rounded,
              size: 20,
              color: t.infoInk,
            ),
            const SizedBox(width: NxSpace.sm),
            Expanded(
              child: Text(
                text,
                style: NxType.bodySmall.copyWith(
                  fontSize: 14,
                  color: t.infoInk,
                  height: 1.45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
