import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/motion/app_motion.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/brand_mark.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../generated/l10n/app_localizations.dart';

/// Shared chrome for every auth screen: brand mark, headline, supporting copy
/// and a scrolling body.
///
/// Everything scrolls. Auth screens combine long translated copy, a stack of
/// fields and an on-screen keyboard, and any one of those can exceed the
/// viewport on a small phone — a fixed header would overflow rather than
/// scroll. `resizeToAvoidBottomInset` plus the scroll view means the focused
/// field always ends up above the keyboard.
class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    super.key,
    required this.title,
    required this.subtitle,
    required this.children,
    this.showBack = true,
    this.footer,
    this.icon,
  });

  final String title;
  final String subtitle;
  final List<Widget> children;
  final bool showBack;

  /// Drawn in a circle in the header, over the title: what the screen is
  /// about (a text message, an email).
  final IconData? icon;

  /// Pinned to the bottom of the content (not the viewport) — typically the
  /// "already have an account?" style link.
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context);
    final MediaQueryData media = MediaQuery.of(context);
    const Color ink = Colors.white;

    // The same shape as login: a green header, and the form on a sheet that
    // rides up over its bottom edge.
    final Widget header = Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(12, media.padding.top + 8, 24, 48),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: <Color>[Color(0xFF1F6E08), AppColors.greenDeep],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              if (showBack)
                IconButton(
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: const Icon(Icons.arrow_back_rounded, color: ink),
                  tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                )
              else
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 12),
                  child: BrandMark(size: 36, radius: 11),
                ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  l10n.appName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.ltr,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: ink,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 12, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: entranceGroup(<Widget>[
                if (icon != null)
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ink.withValues(alpha: 0.16),
                      border: Border.all(color: ink.withValues(alpha: 0.28)),
                    ),
                    child: Icon(icon, color: ink, size: 28),
                  ),
                Text(
                  title,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: ink,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    subtitle,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: ink.withValues(alpha: 0.92),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      // Light status bar icons over the green header.
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        resizeToAvoidBottomInset: true,
        body: GestureDetector(
          // Tapping the background dismisses the keyboard.
          onTap: () => FocusScope.of(context).unfocus(),
          behavior: HitTestBehavior.opaque,
          child: ListView(
            padding: EdgeInsets.zero,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: <Widget>[
              header,
              Transform.translate(
                offset: const Offset(0, -24),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(28)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      24,
                      28,
                      24,
                      32 + media.padding.bottom,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ...children,
                        if (footer != null) ...<Widget>[
                          const SizedBox(height: 24),
                          footer!,
                        ],
                      ],
                    ),
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

/// "New to Nexmile?  Create account" — a prompt plus an inline action.
///
/// Uses [Wrap] rather than [Row] so a long translated prompt drops the action
/// onto a second line instead of squeezing or clipping it.
class AuthFooterLink extends StatelessWidget {
  const AuthFooterLink({
    super.key,
    required this.prompt,
    required this.action,
    required this.onPressed,
  });

  final String prompt;
  final String action;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;

    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 6,
      children: <Widget>[
        Text(
          prompt,
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            child: Text(
              action,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge?.copyWith(
                color: isDark ? AppColors.greenLight : AppColors.greenDeep,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Inline error banner shown above the submit button when the server rejects
/// a request (bad credentials, email taken, and so on).
class AuthErrorBanner extends StatelessWidget {
  const AuthErrorBanner({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color foreground = theme.colorScheme.error;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: foreground.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: foreground.withValues(alpha: 0.35)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.error_outline_rounded, size: 19, color: foreground),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(color: foreground),
            ),
          ),
        ],
      ),
    );
  }
}

/// Submit button with an inline progress state, so a screen never needs to
/// swap the whole button out while a request is in flight.
class AuthSubmitButton extends StatelessWidget {
  const AuthSubmitButton({
    super.key,
    required this.label,
    required this.isBusy,
    required this.onPressed,
  });

  final String label;
  final bool isBusy;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (!isBusy) {
      return GradientButton(
        label: label,
        icon: Icons.arrow_forward_rounded,
        onPressed: onPressed,
      );
    }

    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Opacity(
      opacity: 0.75,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient:
              isDark ? AppColors.ctaGradientDark : AppColors.ctaGradientLight,
          borderRadius: BorderRadius.circular(16),
        ),
        child: SizedBox(
          height: 56,
          child: Center(
            child: SizedBox(
              width: 22,
              height: 22,
              child: CircularProgressIndicator(
                strokeWidth: 2.4,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isDark ? AppColors.black : AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
