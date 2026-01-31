import 'package:flutter/material.dart';

class ZiTab extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool isActive;

  const ZiTab({
    super.key,
    required this.label,
    this.icon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isActive
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.onSurfaceVariant;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 18, color: color),
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
