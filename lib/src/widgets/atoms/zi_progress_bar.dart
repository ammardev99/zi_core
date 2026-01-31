import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiProgressBar extends StatelessWidget {
  final double progress; // Value between 0.0 and 1.0
  final Color? color;

  const ZiProgressBar({super.key, required this.progress, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ZiRadius.sm),
      child: LinearProgressIndicator(
        value: progress,
        minHeight: 8,
        backgroundColor: ZiColors.grayLight.withValues(alpha: 0.3),
        valueColor: AlwaysStoppedAnimation<Color>(color ?? ZiColors.success),
      ),
    );
  }
}
