import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/design/design.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../../../../generated/l10n/app_localizations.dart';
import 'onboarding_scaffold.dart';

/// The first thing a new rider sees: what joining means, what to have in hand,
/// and how long it takes.
///
/// Registration asks for six documents and a bank account. A rider who finds
/// that out on step six goes to look for a passbook and often does not come
/// back; one who is told up front gathers everything first and finishes in one
/// sitting. That is the whole job of this screen.
class OnboardingWelcome extends StatelessWidget {
  const OnboardingWelcome({super.key, required this.onStart});

  final VoidCallback onStart;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    final List<(IconData, String)> needs = <(IconData, String)>[
      (Icons.badge_outlined, l10n.onboardingNeedAadhaar),
      (Icons.article_outlined, l10n.onboardingNeedPan),
      (Icons.credit_card_outlined, l10n.onboardingNeedLicence),
      (Icons.shield_outlined, l10n.onboardingNeedInsurance),
      (Icons.account_balance_outlined, l10n.onboardingNeedBank),
    ];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: t.ground,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  _Hero(
                    title: l10n.onboardingWelcomeTitle,
                    subtitle: l10n.onboardingWelcomeSubtitle,
                    time: l10n.onboardingWelcomeTime,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      NxSpace.screen,
                      NxSpace.lg,
                      NxSpace.screen,
                      NxSpace.lg,
                    ),
                    child: NxCard(
                      padding: const EdgeInsets.fromLTRB(
                        NxSpace.md + 2,
                        NxSpace.md + 2,
                        NxSpace.md + 2,
                        NxSpace.md,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            l10n.onboardingWelcomeNeed,
                            style: NxType.titleSmall.copyWith(
                              color: t.ink,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: NxSpace.xs),
                          ...entranceGroup(
                            <Widget>[
                              for (int i = 0; i < needs.length; i++)
                                _NeedRow(
                                  number: i + 1,
                                  icon: needs[i].$1,
                                  label: needs[i].$2,
                                  last: i == needs.length - 1,
                                ),
                            ],
                          ),
                          const SizedBox(height: NxSpace.sm),
                          // For the riders the list above mostly does not
                          // apply to, said where they will be looking.
                          Container(
                            padding: const EdgeInsets.all(NxSpace.sm),
                            decoration: BoxDecoration(
                              color: t.infoSoft,
                              borderRadius: NxRadius.controlAll,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.pedal_bike_rounded,
                                  size: 20,
                                  color: t.infoInk,
                                ),
                                const SizedBox(width: NxSpace.sm),
                                Expanded(
                                  child: Text(
                                    l10n.onboardingNeedNote,
                                    style: NxType.bodySmall.copyWith(
                                      color: t.infoInk,
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OnboardingBottomBar(
              child: NxPrimaryButton(
                label: l10n.onboardingGetStarted,
                icon: Icons.arrow_forward_rounded,
                onPressed: onStart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero({
    required this.title,
    required this.subtitle,
    required this.time,
  });

  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final AppLocalizations l10n = AppLocalizations.of(context);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(NxRadius.sheet + 4),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(gradient: t.heroGradient),
        child: CustomPaint(
          painter: const NxHeroPattern(),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                NxSpace.lg,
                NxSpace.sm,
                NxSpace.lg,
                NxSpace.xl + 4,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const BrandMark(size: 34, radius: 10),
                      const SizedBox(width: NxSpace.xs + 2),
                      Expanded(
                        child: Text(
                          l10n.appName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.ltr,
                          style: NxType.titleSmall.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: NxSpace.lg),
                  const _RiderBadge(),
                  const SizedBox(height: NxSpace.lg),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: NxType.headline.copyWith(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: NxSpace.xs + 2),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: NxType.body.copyWith(
                      color: Colors.white.withValues(alpha: 0.9),
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: NxSpace.md + 2),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NxSpace.sm + 2,
                      vertical: NxSpace.xs,
                    ),
                    decoration: BoxDecoration(
                      color: t.lime,
                      borderRadius: NxRadius.pillAll,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.schedule_rounded, size: 18, color: t.onLime),
                        const SizedBox(width: NxSpace.xs),
                        Flexible(
                          child: Text(
                            time,
                            style: NxType.caption.copyWith(
                              fontSize: 13,
                              color: t.onLime,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
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

/// A rider in a ring of light, with the two things the job pays in — money
/// and freedom over hours — orbiting it. Drawn in code; plays once.
class _RiderBadge extends StatelessWidget {
  const _RiderBadge();

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final bool still = AppMotion.reduced(context);

    Widget satellite(IconData icon, Color fill, Color ink) => Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: fill,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2.5),
            boxShadow: NxShadows.card,
          ),
          child: Icon(icon, size: 20, color: ink),
        );

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: still ? 1 : 0, end: 1),
      duration: const Duration(milliseconds: 700),
      curve: AppMotion.emphasise,
      builder: (BuildContext context, double v, Widget? child) =>
          Transform.scale(scale: 0.85 + 0.15 * v, child: child),
      child: SizedBox(
        width: 168,
        height: 132,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 132,
              height: 132,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.12),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.delivery_dining_rounded,
                size: 54,
                color: t.action,
              ),
            ),
            PositionedDirectional(
              top: 6,
              end: 4,
              child: satellite(Icons.currency_rupee_rounded, t.lime, t.onLime),
            ),
            PositionedDirectional(
              bottom: 8,
              start: 6,
              child: satellite(Icons.schedule_rounded, Colors.white, t.primary),
            ),
          ],
        ),
      ),
    );
  }
}

/// One thing to have in hand: a numbered icon well and its name, hairlines
/// between.
class _NeedRow extends StatelessWidget {
  const _NeedRow({
    required this.number,
    required this.icon,
    required this.label,
    required this.last,
  });

  final int number;
  final IconData icon;
  final String label;
  final bool last;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    return DecoratedBox(
      decoration: BoxDecoration(
        border: last ? null : Border(bottom: BorderSide(color: t.hairline)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: NxSpace.sm - 2),
        child: Row(
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: t.primarySoft,
                borderRadius: NxRadius.smallAll,
              ),
              child: Icon(icon, size: 21, color: t.primary),
            ),
            const SizedBox(width: NxSpace.sm + 2),
            Expanded(
              child: Text(
                label,
                style: NxType.body.copyWith(
                  color: t.ink,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: NxSpace.xs),
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: t.border, width: 1.5),
              ),
              child: Text(
                '$number',
                textDirection: TextDirection.ltr,
                style: NxType.caption.copyWith(
                  fontSize: 11,
                  color: t.inkMuted,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
