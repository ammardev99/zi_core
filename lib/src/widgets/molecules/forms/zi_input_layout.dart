// zi_input_layout.dart
// --------------------------------------------
// Controls how input is placed in the UI.
//
// NOTE:
// - Only ONE default layout for now
// - Variant-based layouts can be added later
//
// This file intentionally stays small.

import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';
import 'zi_input_type.dart';

class ZiInputLayout {
  static Widget wrap({
    required ZiInputVariant variant,
    required Widget field,
    String? label,
  }) {
    // TEMP: only stacked differs
    if (variant == ZiInputVariant.stacked && label != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: ZiTextStyles.inputLabel),
          const SizedBox(height: 6),
          field,
        ],
      );
    }
    return field;
  }
}
