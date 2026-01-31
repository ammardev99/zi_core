// zi_input.dart
// --------------------------------------------
// ZiInput – Master reusable input component.
//
// Responsibilities:
// - Owns input state
// - Resolves behavior via ZiGetInputType
// - Applies decoration via ZiInputStyleVariant
// - Wraps layout via ZiInputLayout
//
// This file should remain stable.

import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';
import 'zi_get_input_type.dart';
import 'zi_input_layout.dart';
import 'zi_input_style.dart';
import 'zi_input_style_variant.dart';
import 'zi_input_type.dart';

class ZiInput extends StatefulWidget {
  final String? label;
  final String? hint;
  final TextEditingController? controller;

  final ZiInputType type;
  final ZiInputVariant variant;
  final ZiInputStyle style;

  final bool enabled;

  final Widget? prefix;
  final Widget? suffix;
  final String? errorText;

  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final ZiTapAction? onTap;

  const ZiInput({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.type = ZiInputType.text,
    this.variant = ZiInputVariant.outline,
    this.style = const ZiInputStyle(),
    this.enabled = true,
    this.prefix,
    this.suffix,
    this.errorText,
    this.validator,
    this.onChanged,
    this.onTap,
  });

  @override
  State<ZiInput> createState() => _ZiInputState();
}

class _ZiInputState extends State<ZiInput> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.type == ZiInputType.password;
  }

  @override
  Widget build(BuildContext context) {
    final typeConfig = ziResolveInputType(widget.type);
    final style =
        widget.style == const ZiInputStyle()
            ? ZiInputStyle.system
            : widget.style;

    final decoration = ZiInputStyleVariant.build(
      variant: widget.variant,
      style: style,
      label: widget.label,
      hint: widget.hint,
      prefix: widget.prefix,
      suffix: _buildSuffix(),
      errorText: widget.errorText,
    );

    final field = TextFormField(
      controller: widget.controller,
      enabled: widget.enabled,
      readOnly: typeConfig.readOnly,
      keyboardType: typeConfig.keyboardType,
      obscureText: typeConfig.obscureText && _obscure,
      maxLines: typeConfig.maxLines,
      inputFormatters: typeConfig.formatters,
      validator: widget.validator ?? typeConfig.defaultValidator,
      onChanged: widget.onChanged,
      onTap: () => widget.onTap?.execute(context),
      style: style.textStyle,
      decoration: decoration,
      cursorColor: style.focusColor ?? ZiColors.inputFocused,
      selectionControls: MaterialTextSelectionControls(),
      selectionHeightStyle: BoxHeightStyle.tight,
      selectionWidthStyle: BoxWidthStyle.tight,
    );
    return ZiInputLayout.wrap(
      variant: widget.variant,
      label: widget.label,
      field: field,
    );
  }

  Widget? _buildSuffix() {
    if (widget.type == ZiInputType.password) {
      return IconButton(
        icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
        onPressed: () => setState(() => _obscure = !_obscure),
      );
    }
    return widget.suffix;
  }
}
