import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiTooltip extends StatelessWidget {
  final String message;
  final Widget child;

  const ZiTooltip({super.key, required this.message, required this.child});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      padding: ZiSpacing.smallPadding,
      decoration: BoxDecoration(
        color: ZiColors.black.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(ZiRadius.sm),
      ),
      textStyle: ZiTextStyles.caption.copyWith(color: ZiColors.white),
      child: child,
    );
  }
}
