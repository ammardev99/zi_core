// zi_get_input_type.dart
// --------------------------------------------
// Resolves input behavior based on ZiInputType.
//
// Handles:
// - keyboardType
// - obscureText
// - readOnly
// - maxLines
// - inputFormatters
// - default validation
//
// UI and decoration are NOT handled here.

import 'package:flutter/services.dart';
import 'zi_input_type.dart';

class ZiGetInputType {
  final TextInputType keyboardType;
  final bool obscureText;
  final bool readOnly;
  final int maxLines;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? defaultValidator;

  const ZiGetInputType({
    required this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.formatters,
    this.defaultValidator,
  });
}

/// Central resolver
ZiGetInputType ziResolveInputType(ZiInputType type) {
  switch (type) {
    case ZiInputType.email:
      return ZiGetInputType(
        keyboardType: TextInputType.emailAddress,
        defaultValidator: (v) {
          if (v == null || v.isEmpty) return 'Email is required';
          if (!v.contains('@')) return 'Invalid email';
          return null;
        },
      );

    case ZiInputType.number:
      return ZiGetInputType(
        keyboardType: TextInputType.number,
        formatters: [FilteringTextInputFormatter.digitsOnly],
      );

    case ZiInputType.password:
      return ZiGetInputType(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        defaultValidator: (v) {
          if (v == null || v.length < 6) {
            return 'Minimum 6 characters required';
          }
          return null;
        },
      );

    case ZiInputType.multiline:
      return ZiGetInputType(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
      );

    case ZiInputType.text:
    return const ZiGetInputType(
        keyboardType: TextInputType.text,
      );
  }
}
