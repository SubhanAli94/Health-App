import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      textTheme: _textTheme,
      colorScheme: _colorScheme,
      inputDecorationTheme: _inputDecorationTheme,
      filledButtonTheme: _filledButtonTheme,
    );
  }

  static TextTheme get _textTheme {
    const textTheme = TextTheme();

    final bodyFont = GoogleFonts.ibmPlexSansTextTheme(textTheme);
    final headingFont = GoogleFonts.syneMonoTextTheme(textTheme);

    return bodyFont.copyWith(
      displayLarge: headingFont.displayLarge,
      displayMedium: headingFont.displayLarge,
      displaySmall: headingFont.displayLarge,
      headlineLarge: headingFont.headlineLarge,
      headlineMedium: headingFont.headlineMedium,
      headlineSmall: headingFont.headlineSmall,
      bodyLarge: bodyFont.displayLarge,
      bodyMedium: bodyFont.displayLarge,
      bodySmall: bodyFont.displayLarge,
    );
  }

  static ColorScheme get _colorScheme => const ColorScheme(
        brightness: Brightness.light,
        error: Color(0xffba1a1a),
        errorContainer: Color(0xffffdad6),
        inversePrimary: Color(0xff9ecaff),
        inverseSurface: Color(0xff2f3033),
        onError: Color(0xffffffff),
        onInverseSurface: Color(0xfff1f0f4),
        onErrorContainer: Color(0xff410002),
        primary: Color.fromARGB(255, 2, 48, 80),
        onPrimary: Color.fromARGB(255, 230, 231, 238),
        onPrimaryContainer: Color(0xffffffff),
        onSecondary: Color(0xffffffff),
        onSecondaryContainer: Color(0xff101c2b),
        onSurfaceVariant: Color(0xff43474e),
        tertiary: Color.fromARGB(255, 89, 141, 178),
        tertiaryContainer: Color(0xfff2daff),
        onTertiary: Color(0xffffffff),
        onTertiaryContainer: Color(0xff251431),
        outline: Color(0xff73777f),
        outlineVariant: Color(0xffc3c7cf),
        onSurface: Color(0xff1a1c1e),
        primaryContainer: Color(0xff002946),
        scrim: Color(0xff000000),
        secondary: Color(0x89024c87),
        secondaryContainer: Color(0xffd7e3f7),
        shadow: Color(0xff000000),
        surface: Color(0xfffdfcff),
        surfaceTint: Color(0xff0061a4),
        surfaceContainerHighest: Color(0xffdfe2eb),
      );

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        filled: true,
        fillColor: _colorScheme.surface,
        border: InputBorder.none,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        enabledBorder: _enabledBorder,
        disabledBorder: _disabledBorder,
        focusedBorder: _focusedBorder,
      );

  static FilledButtonThemeData get _filledButtonTheme => FilledButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      );

  static get _enabledBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Colors.transparent));

  static get _focusedBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none);

  static get _disabledBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.2),
        ),
      );
}
