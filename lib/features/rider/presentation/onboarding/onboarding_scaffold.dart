import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/design/design.dart';
import '../../../../generated/l10n/app_localizations.dart';

/// Shared chrome for every onboarding step: a green header carrying the step
/// count, a progress rail and the step's own headline; a scrolling body; and a
/// pinned action bar.
///
/// The action bar is pinned to the viewport rather than to the end of the
/// content, which is the opposite of what `AuthScaffold` does. An auth screen
/// has one field; an onboarding step has five, and a rider who has scrolled to
/// the bottom of a long form should not have to hunt for the button that
/// saves it.
class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    super.key,
    required this.stepIndex,
    required this.stepCount,
    required this.title,
    required this.subtitle,
    required this.children,
    required this.onPrimary,
    required this.primaryLabel,
    this.icon,
    this.bodyInCard = true,
    this.isBusy = false,
    this.onBack,
    this.banner,
    this.formKey,
  });

  /// Zero-based.
  final int stepIndex;
  final int stepCount;

  final String title;
  final String subtitle;
  final List<Widget> children;

  /// Shown beside the headline, so each step is recognisable at a glance.
  final IconData? icon;

  /// True wraps [children] in one white card, which is right for a form. A
  /// step whose children are already cards — the document checklist, the
  /// review — passes false so cards do not nest inside a card.
  final bool bodyInCard;

  /// Null disables the primary button — used while a required choice is
  /// unmade, rather than letting the rider submit a form the API will refuse.
  final VoidCallback? onPrimary;

  final String primaryLabel;
  final bool isBusy;

  /// Null on the first step, where there is nothing behind.
  final VoidCallback? onBack;

  /// Error banner shown above the action bar.
  final Widget? banner;

  /// Wraps the scrolling body in a [Form] when given.
  ///
  /// The form lives here rather than inside each step because a step's fields
  /// are handed over as a flat list and dropped straight into a `ListView`;
  /// a step that wrapped some of them in its own `Form` would silently leave
  /// the rest unvalidated. One form around the whole body makes that mistake
  /// impossible.
  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      // Light status bar icons over the green header.
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: context.nx.ground,
        body: Column(
          children: <Widget>[
            _Header(
              stepIndex: stepIndex,
              stepCount: stepCount,
              title: title,
              subtitle: subtitle,
              icon: icon,
              onBack: isBusy ? null : onBack,
              showBack: onBack != null,
            ),
            Expanded(child: _body()),
            OnboardingBottomBar(
              banner: banner,
              note: l10n.onboardingSavedNote,
              child: NxPrimaryButton(
                label: primaryLabel,
                icon: Icons.arrow_forward_rounded,
                busy: isBusy,
                onPressed: onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    final List<Widget> content = bodyInCard
        ? <Widget>[
            NxCard(
              padding: const EdgeInsets.fromLTRB(
                NxSpace.md + 2,
                NxSpace.lg - 4,
                NxSpace.md + 2,
                NxSpace.xxs,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
            ),
          ]
        : children;

    final Widget list = ListView(
      padding: const EdgeInsets.fromLTRB(
        NxSpace.screen,
        NxSpace.md,
        NxSpace.screen,
        NxSpace.lg,
      ),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: content,
    );
    final GlobalKey<FormState>? key = formKey;
    return key == null ? list : Form(key: key, child: list);
  }
}

/// The green panel at the top: back, "Step 3 of 7" in a lime pill, the rail,
/// and the step's icon and headline in white.
class _Header extends StatelessWidget {
  const _Header({
    required this.stepIndex,
    required this.stepCount,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onBack,
    required this.showBack,
  });

  final int stepIndex;
  final int stepCount;
  final String title;
  final String subtitle;
  final IconData? icon;
  final VoidCallback? onBack;
  final bool showBack;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(NxRadius.sheet),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(gradient: t.heroGradient),
        child: CustomPaint(
          painter: const NxHeroPattern(),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                NxSpace.sm,
                NxSpace.xxs,
                NxSpace.lg,
                NxSpace.lg + 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      if (showBack)
                        HeaderIconButton(
                          icon: Icons.arrow_back_rounded,
                          tooltip: l10n.backLabel,
                          onPressed: onBack,
                        )
                      else
                        const SizedBox(width: NxSpace.xxs, height: 48),
                      const Spacer(),
                      // The count in lime: the one thing on the panel the eye
                      // should find without reading.
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: NxSpace.sm,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: t.lime,
                          borderRadius: NxRadius.pillAll,
                        ),
                        child: Text(
                          l10n.stepOfSteps(stepIndex + 1, stepCount),
                          style: NxType.caption.copyWith(
                            color: t.onLime,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: NxSpace.sm),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: NxSpace.xs,
                    ),
                    child: _ProgressRail(current: stepIndex, total: stepCount),
                  ),
                  const SizedBox(height: NxSpace.lg - 4),
                  // Re-keyed on the step, so moving between steps replays the
                  // entrance and the header reads as new rather than as the
                  // same words silently swapping underneath.
                  ...entranceGroup(
                    <Widget>[
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: NxSpace.xs,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            if (icon != null) ...<Widget>[
                              Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.16),
                                  borderRadius: NxRadius.controlAll,
                                  border: Border.all(
                                    color: Colors.white.withValues(alpha: 0.24),
                                  ),
                                ),
                                child: Icon(
                                  icon,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                              const SizedBox(width: NxSpace.sm + 2),
                            ],
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    title,
                                    key: ValueKey<String>('title-$stepIndex'),
                                    style: NxType.headline.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    subtitle,
                                    style: NxType.bodySmall.copyWith(
                                      fontSize: 14,
                                      color: Colors.white.withValues(
                                        alpha: 0.88,
                                      ),
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A round, translucent white button for the green headers.
class HeaderIconButton extends StatelessWidget {
  const HeaderIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.16),
      shape: const CircleBorder(),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white),
        tooltip: tooltip,
      ),
    );
  }
}

/// Segmented bar rather than a numbered stepper: seven numbered circles do not
/// fit a narrow phone once translated, and the rider only needs to know how
/// much is left.
class _ProgressRail extends StatelessWidget {
  const _ProgressRail({required this.current, required this.total});

  final int current;
  final int total;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return Row(
      children: <Widget>[
        for (int i = 0; i < total; i++) ...<Widget>[
          if (i > 0) const SizedBox(width: 5),
          Expanded(
            // Done segments solid white, the current one lime and thicker,
            // the rest faint: "how much is left" at a glance.
            child: AnimatedContainer(
              duration: AppMotion.quick,
              curve: AppMotion.change,
              height: i == current ? 6 : 4,
              decoration: BoxDecoration(
                borderRadius: NxRadius.pillAll,
                color: i == current
                    ? t.lime
                    : Colors.white.withValues(alpha: i < current ? 0.85 : 0.24),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

/// The bar pinned to the foot of a sign-up screen: an optional error banner,
/// the one button, and an optional reassurance line under it.
class OnboardingBottomBar extends StatelessWidget {
  const OnboardingBottomBar({
    super.key,
    required this.child,
    this.banner,
    this.note,
  });

  final Widget child;
  final Widget? banner;
  final String? note;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: t.surface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(NxRadius.card),
        ),
        boxShadow: NxShadows.bar,
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            NxSpace.screen + 4,
            NxSpace.sm + 2,
            NxSpace.screen + 4,
            note == null ? NxSpace.sm + 2 : NxSpace.xs + 2,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (banner != null) ...<Widget>[
                banner!,
                const SizedBox(height: NxSpace.sm),
              ],
              child,
              if (note != null) ...<Widget>[
                const SizedBox(height: NxSpace.xs + 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.lock_outline_rounded, size: 14, color: t.inkMuted),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        note!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: NxType.caption.copyWith(
                          color: t.inkMuted,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
