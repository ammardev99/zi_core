import 'package:flutter/material.dart';
import 'zi_theme_io.dart';

class ZiColors {
  ZiColors._();
  // Overide
  static ZiColorOverrides? _override;
  static void override(ZiColorOverrides overrides) {
    _override = overrides;
  }

  // =========================
  // Brand Core
  // =========================
  static Color get primary => _override?.primary ?? const Color(0xFF237D9B);
  static Color get secondary => _override?.secondary ?? const Color(0xFF1C647C);
  static Color tertiary = _override?.secondary ?? Color(0xFF239B7F);
// ZiAdopted Blend light and dark tone - can be overide
  static Color get accent => _override?.accent ??ZiAdoptColor.light(primary, 85);
  static Color get primarySoft => _override?.primarySoft?? ZiAdoptColor.light(primary, 60);
  static Color get primaryDark => _override?.primaryDark?? ZiAdoptColor.dark(primary, 60);

  // =========================
  // Gradients
  // =========================
  static LinearGradient gradientLR = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primary, primaryDark], // error here Invalid constant value
  );

  static LinearGradient gradientTB = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primary, primaryDark],
  );

  // =========================
  // Neutrals
  // =========================
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;
  static const Color background = Color(0xFFF7F9FB);
  static const Color surface = white;
  static const Color forground = Color(0xFFFFFFFF);
  static const Color overlay = Color(0x99000000);
  static const Color border = Color(0xFFE0E6EA);
  static const Color divider = Color(0xFFD6DDE2);
  static const Color gray = Color(0xFF757575);
  static const Color grayLight = Color(0xFFBDBDBD);

  // =========================
  // Text
  // =========================
  @Deprecated("use text dark not textPrimary ")
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textDark = Color(0xFF404040);
  static const Color textSecondary = Color(0xFF5F6B75);
  static const Color heading = Color(0xFF525252);
  static const Color text = Color(0xFF5C5E64);
  static const Color textMuted = Color(0xFF9AA4AC);
  static const Color textWhite = white;

  // =========================
  // States
  // =========================
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFF9A825);
  static const Color error = Color(0xFFC62828);
  static const Color info = Color(0xFF0288D1);
  static const Color disabled = Color(0xFFB0BEC5);

  // =========================
  // Inputs
  // =========================
  static const Color inputBackground = white;
  static const Color inputFilledBackground = Color(0xFFF2F6F9);
  static const Color inputBorder = border;
  static Color inputFocused = primary;
  static const Color inputText = textPrimary;
  static const Color inputHint = textMuted;
  static const Color inputError = error;
  static const Color inputDisabled = disabled;

  // =========================
  // On Contrast
  // =========================
  static const Color onPrimary = white;
  static const Color onSecondary = white;
  static Color onAccent = primary;
  static const Color onSurface = textPrimary;

  // =========================
  // Debug (Dev Only)
  // =========================
  static const Color debugRed = Color(0xFFFF0000);
  static const Color debugGreen = Color(0xFF00FF00);
  static const Color debugYellow = Color(0xFFFFFF00);
}
