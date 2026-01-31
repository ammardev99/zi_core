import 'package:flutter/material.dart';
import '../zi_core_io.dart';

class ZiTextStyles {
  ZiTextStyles._();

  // =========================
  // Display (Marketing / Hero)
  // =========================
  // static const TextStyle displayLarge = TextStyle(
  //   fontSize: 32,
  //   height: 1.25,
  //   fontWeight: FontWeight.w600,
  //   letterSpacing: -0.5,
  //   color: ZiColors.textPrimary,
  // );

//   static const TextStyle displayMedium = TextStyle(
//     fontSize: 28,
//     height: 1.25,
//     fontWeight: FontWeight.w600,
//     color: ZiColors.textPrimary,
//   );

//   // =========================
//   // Headlines (Screen titles)
//   // =========================
//   static const TextStyle headlineLarge = TextStyle(
//     fontSize: 24,
//     height: 1.3,
//     fontWeight: FontWeight.w600,
//     color: ZiColors.textPrimary,
//   );

//   static const TextStyle headlineMedium = headlineLarge;

//   // =========================
//   // Titles (Sections, Cards)
//   // =========================
//   static const TextStyle titleLarge = TextStyle(
//     fontSize: 20,
//     height: 1.35,
//     fontWeight: FontWeight.w600,
//     color: ZiColors.textPrimary,
//   );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    height: 1.35,
    fontWeight: FontWeight.w600,
    color: ZiColors.textPrimary,
  );

//   static const TextStyle titleSmall = TextStyle(
//     fontSize: 16,
//     height: 1.4,
//     fontWeight: FontWeight.w500,
//     color: ZiColors.textPrimary,
//   );

//   // =========================
//   // Body (Primary reading)
//   // =========================
//   static const TextStyle bodyLarge = TextStyle(
//     fontSize: 16,
//     height: 1.5,
//     fontWeight: FontWeight.w400,
//     color: ZiColors.textPrimary,
//   );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: ZiColors.textSecondary,
  );

//   static const TextStyle bodySmall = TextStyle(
//     fontSize: 13,
//     height: 1.45,
//     fontWeight: FontWeight.w400,
//     color: ZiColors.textSecondary,
//   );

//   // =========================
//   // Labels (Buttons, Chips)
//   // =========================
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: ZiColors.textWhite,
  );

//   static const TextStyle labelMedium = TextStyle(
//     fontSize: 13,
//     height: 1.2,
//     fontWeight: FontWeight.w600,
//     color: ZiColors.textWhite,
//   );

//   // Backward compatibility
//   static const TextStyle button = labelLarge;

//   // =========================
//   // Inputs
//   // =========================
  static const TextStyle inputLabel = TextStyle(
    fontSize: 13,
    height: 1.3,
    fontWeight: FontWeight.w500,
    color: ZiColors.textSecondary,
  );

  static const TextStyle input = TextStyle(
    fontSize: 15,
    height: 1.45,
    fontWeight: FontWeight.w400,
    color: ZiColors.textPrimary,
  );

  static const TextStyle inputHint = TextStyle(
    fontSize: 15,
    height: 1.45,
    fontWeight: FontWeight.w400,
    color: ZiColors.textMuted,
  );

//   static const TextStyle inputError = TextStyle(
//     fontSize: 12,
//     height: 1.3,
//     fontWeight: FontWeight.w400,
//     color: ZiColors.error,
//   );

//   // =========================
//   // Caption / Meta
//   // =========================
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w400,
    color: ZiColors.textMuted,
  );

//   // =========================
//   // Legacy / Compatibility
//   // =========================
  static const TextStyle subHeading = titleMedium;
  static const TextStyle tag = caption;
}
