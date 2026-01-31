import 'package:flutter/material.dart';

import 'tap_action.dart';

class ZiMenuCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final ZiTapAction action;

  const ZiMenuCard({
    super.key,
    required this.icon,
    required this.label,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => action.execute(context),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 28),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
