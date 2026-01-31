import 'package:flutter/material.dart';

class ZiColors {
  ZiColors._();
  // =========================
  // Brand Core
  // =========================
  static const Color primary = Color(0xFF237D9B);
  static const Color primaryDark = Color(0xFF1C647C);
  static const Color primarySoft = Color(0xFFDEEBF0);
  static const Color secondary = Color(0xFF1C647C);
  static const Color tertiary = Color(0xFF239B7F);
  static const Color accent = primarySoft;

  // =========================
  // Gradients
  // =========================
  static const LinearGradient gradientLR = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primary, primaryDark],
  );

  static const LinearGradient gradientTB = LinearGradient(
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
  static const Color textPrimary = Color(0xFF1A1A1A);
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
  static const Color inputFocused = primary;
  static const Color inputText = textPrimary;
  static const Color inputHint = textMuted;
  static const Color inputError = error;
  static const Color inputDisabled = disabled;

  // =========================
  // On Contrast
  // =========================
  static const Color onPrimary = white;
  static const Color onSecondary = white;
  static const Color onAccent = primary;
  static const Color onSurface = textPrimary;

  // =========================
  // Debug (Dev Only)
  // =========================
  static const Color debugRed = Color(0xFFFF0000);
  static const Color debugGreen = Color(0xFF00FF00);
  static const Color debugYellow = Color(0xFFFFFF00);
}
