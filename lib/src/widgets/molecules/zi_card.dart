import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  const ZiCard({super.key, required this.child, this.padding, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? ZiSpacing.mediumPadding,
        decoration: BoxDecoration(
          color: ZiColors.white,
          borderRadius: BorderRadius.circular(ZiRadius.card),
          boxShadow: ZiShadows.card,
        ),
        child: child,
      ),
    );
  }
}