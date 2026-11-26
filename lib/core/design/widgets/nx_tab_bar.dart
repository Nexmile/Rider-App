import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../motion/app_motion.dart';
import '../app_radius.dart';
import '../app_shadows.dart';
import '../app_spacing.dart';
import '../app_tokens.dart';
import '../app_typography.dart';

/// One destination in an [NxTabBar].
@immutable
class NxTab {
  const NxTab({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    this.badge = false,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;

  /// A dot in the action colour: something on that tab needs the rider.
  final bool badge;
}

/// The tab bar, floating over the bottom edge as a dark pill. The selected
/// tab sits in a lime capsule; every label stays visible, because a rider
/// reads words faster than icons.
class NxTabBar extends StatelessWidget {
  const NxTabBar({
    super.key,
    required this.tabs,
    required this.index,
    required this.onSelect,
  });

  final List<NxTab> tabs;
  final int index;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.only(bottom: NxSpace.sm),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          NxSpace.screen,
          NxSpace.xxs,
          NxSpace.screen,
          0,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: t.night,
            borderRadius: NxRadius.heroAll,
            border: isDark ? Border.all(color: t.border) : null,
            boxShadow: isDark ? NxShadows.none : NxShadows.floating,
          ),
          child: Padding(
            padding: const EdgeInsets.all(NxSpace.xs),
            child: Row(
              children: <Widget>[
                for (int i = 0; i < tabs.length; i++)
                  Expanded(
                    child: _Item(
                      tab: tabs[i],
                      selected: i == index,
                      onTap: () {
                        if (i != index) HapticFeedback.selectionClick();
                        onSelect(i);
                      },
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

class _Item extends StatelessWidget {
  const _Item({required this.tab, required this.selected, required this.onTap});

  final NxTab tab;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final NxTokens t = context.nx;
    final Color colour =
        selected ? t.onLime : t.onNight.withValues(alpha: 0.7);
    return Semantics(
      button: true,
      selected: selected,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: AnimatedContainer(
          duration: AppMotion.quick,
          curve: AppMotion.change,
          constraints: const BoxConstraints(minHeight: NxSpace.tapTarget),
          padding: const EdgeInsets.symmetric(
            vertical: NxSpace.xs,
            horizontal: NxSpace.xxs,
          ),
          decoration: BoxDecoration(
            color: selected ? t.lime : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  AnimatedScale(
                    duration: AppMotion.quick,
                    curve: AppMotion.emphasise,
                    scale: selected ? 1.08 : 1,
                    child: Icon(
                      selected ? tab.selectedIcon : tab.icon,
                      size: 22,
                      color: colour,
                    ),
                  ),
                  if (tab.badge)
                    PositionedDirectional(
                      top: -2,
                      end: -4,
                      child: Container(
                        key: const ValueKey<String>('tab-badge'),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: t.action,
                          shape: BoxShape.circle,
                          border: Border.all(color: t.night, width: 2),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 3),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  tab.label,
                  maxLines: 1,
                  style: NxType.caption.copyWith(
                    color: colour,
                    fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
