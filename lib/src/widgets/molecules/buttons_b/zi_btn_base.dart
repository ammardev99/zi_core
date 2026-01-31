import 'package:zi_core/src/widgets/molecules/buttons_b/zi_get_btn.dart';
import 'package:zi_core/src/zi_core_io.dart';
import 'package:flutter/material.dart';
// import 'package:zi/zi_core/widgets/molecules/buttons_b/zi_get_btn.dart';
// import 'package:zi/zi_core/widgets/molecules/buttons_b/zi_btn_style.dart';

class ZiButtonB extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final VoidCallback? action; // ZiTapAction equivalent
  final bool loading;
  final bool disabled;
  final bool expand;
  final ZiButtonStyleB? style;
  final ZiButtonVariantB variant;

  const ZiButtonB({
    super.key,
    this.label,
    this.icon,
    this.action,
    this.loading = false,
    this.disabled = false,
    this.expand = false,
    this.style,
    this.variant = ZiButtonVariantB.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ZiGetButtonB.get(
      variant: variant,
      onTap: disabled ? null : action,
      label: label,
      icon: icon,
      loading: loading,
      disabled: disabled,
      expand: expand,
      style: style,
    );
  }
}
