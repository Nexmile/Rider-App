import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_radius.dart';
import 'app_spacing.dart';
import 'app_tokens.dart';
import 'app_typography.dart';

/// Light and dark [ThemeData], built from [NxTokens] so Material widgets and
/// the app's own components agree.
abstract final class NxTheme {
  static ThemeData get light => _build(NxTokens.light, Brightness.light);
  static ThemeData get dark => _build(NxTokens.dark, Brightness.dark);

  static ThemeData _build(NxTokens t, Brightness brightness) {
    final bool isDark = brightness == Brightness.dark;
    final ColorScheme scheme = ColorScheme(
      brightness: brightness,
      primary: t.primary,
      onPrimary: t.onPrimary,
      primaryContainer: t.primarySoft,
      onPrimaryContainer: t.primary,
      secondary: t.action,
      onSecondary: t.onAction,
      secondaryContainer: t.actionSoft,
      onSecondaryContainer: t.action,
      tertiary: t.info,
      onTertiary: t.surface,
      error: t.danger,
      onError: t.surface,
      surface: t.surface,
      onSurface: t.ink,
      surfaceContainerLowest: t.surface,
      surfaceContainerLow: t.surfaceMuted,
      surfaceContainer: t.surfaceMuted,
      surfaceContainerHigh: t.surfaceMuted,
      surfaceContainerHighest: t.border,
      onSurfaceVariant: t.inkMuted,
      outline: t.border,
      outlineVariant: t.border,
      inverseSurface: t.ink,
      onInverseSurface: t.surface,
      shadow: Colors.black,
    );
    final TextTheme text = NxType.textTheme(t.ink, t.inkMuted);
    final SystemUiOverlayStyle overlay =
        (isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark)
            .copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: t.ground,
      systemNavigationBarIconBrightness:
          isDark ? Brightness.light : Brightness.dark,
    );

    final RoundedRectangleBorder control =
        RoundedRectangleBorder(borderRadius: NxRadius.controlAll);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      fontFamily: NxType.family,
      colorScheme: scheme,
      scaffoldBackgroundColor: t.ground,
      canvasColor: t.ground,
      textTheme: text,
      extensions: <ThemeExtension<dynamic>>[t],
      splashFactory: InkSparkle.splashFactory,
      appBarTheme: AppBarTheme(
        backgroundColor: t.ground,
        foregroundColor: t.ink,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        systemOverlayStyle: overlay,
        titleTextStyle: NxType.title.copyWith(color: t.ink),
      ),
      cardTheme: CardThemeData(
        color: t.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: NxRadius.cardAll,
          side: BorderSide(color: t.border),
        ),
      ),
      dividerTheme: DividerThemeData(color: t.border, thickness: 1, space: 1),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: t.surface,
        // Roomy vertically: Devanagari and Tamil descenders clip against a
        // tighter field.
        contentPadding: const EdgeInsets.symmetric(
          horizontal: NxSpace.md,
          vertical: NxSpace.md,
        ),
        hintStyle: NxType.body.copyWith(color: t.inkFaint),
        border: OutlineInputBorder(
          borderRadius: NxRadius.controlAll,
          borderSide: BorderSide(color: t.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: NxRadius.controlAll,
          borderSide: BorderSide(color: t.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: NxRadius.controlAll,
          borderSide: BorderSide(color: t.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: NxRadius.controlAll,
          borderSide: BorderSide(color: t.danger, width: 1.4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: NxRadius.controlAll,
          borderSide: BorderSide(color: t.danger, width: 2),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: t.primary,
          foregroundColor: t.onPrimary,
          disabledBackgroundColor: t.border,
          disabledForegroundColor: t.inkFaint,
          minimumSize: const Size.fromHeight(NxSpace.tapTarget),
          shape: control,
          elevation: 0,
          textStyle: NxType.button,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: t.ink,
          minimumSize: const Size.fromHeight(NxSpace.tapTarget),
          shape: control,
          side: BorderSide(color: t.border, width: 1.4),
          textStyle: NxType.button,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: t.primary,
          textStyle: NxType.button.copyWith(fontSize: 15),
          shape: control,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: t.surface,
        selectedColor: t.primarySoft,
        side: BorderSide(color: t.border),
        shape: const StadiumBorder(),
        labelStyle: NxType.caption.copyWith(fontSize: 13, color: t.ink),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: t.surface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        dragHandleColor: t.border,
        shape: const RoundedRectangleBorder(borderRadius: NxRadius.sheetTop),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: t.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: NxRadius.cardAll),
        titleTextStyle: NxType.title.copyWith(color: t.ink),
        contentTextStyle: NxType.body.copyWith(color: t.inkMuted),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: t.ink,
        contentTextStyle: NxType.body.copyWith(color: t.surface),
        shape: RoundedRectangleBorder(borderRadius: NxRadius.controlAll),
        insetPadding: const EdgeInsets.all(NxSpace.md),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: t.primary),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> s) =>
              s.contains(WidgetState.selected) ? t.onPrimary : null,
        ),
        trackColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> s) =>
              s.contains(WidgetState.selected) ? t.primary : null,
        ),
      ),
    );
  }
}
