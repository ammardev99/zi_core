import 'package:flutter/material.dart';

class ZiBadge extends StatelessWidget {
  final String label;
  final Color? color;
  final EdgeInsets padding;

  const ZiBadge({
    super.key,
    required this.label,
    this.color,
    this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = color ?? Theme.of(context).colorScheme.primary;

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: bgColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
