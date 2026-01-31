import 'package:flutter/material.dart';

import 'tap_action.dart';

class ZiMenuTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final ZiTapAction action;

  const ZiMenuTile({
    super.key,
    required this.icon,
    required this.label,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => action.execute(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(icon, size: 22),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
