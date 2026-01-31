import 'package:flutter/material.dart';
import '../zi_core_io.dart';

class ZiShadows {
  ZiShadows._();

  static List<BoxShadow> forElevation(double elevation) {
    if (elevation <= ZiElevation.none) return [];

    if (elevation <= ZiElevation.lowCards) {
      return [
        BoxShadow(
          color: ZiColors.black.withValues(alpha: 0.05),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ];
    }

    if (elevation <= ZiElevation.mediumModals) {
      return [
        BoxShadow(
          color: ZiColors.black.withValues(alpha: 0.08),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ];
    }

    return [
      BoxShadow(
        color: ZiColors.black.withValues(alpha: 0.12),
        blurRadius: 16,
        offset: const Offset(0, 8),
      ),
    ];
  }

  // Backward compatibility
  static final List<BoxShadow> card = forElevation(ZiElevation.lowCards);
  static final List<BoxShadow> button = forElevation(ZiElevation.mediumModals);
}
