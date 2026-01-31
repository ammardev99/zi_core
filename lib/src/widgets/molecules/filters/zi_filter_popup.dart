import 'package:flutter/material.dart';

class ZiFilterPopup extends StatelessWidget {
  final String title;
  final Widget child;
  final VoidCallback onApply;
  final VoidCallback? onClear;

  const ZiFilterPopup({
    super.key,
    required this.title,
    required this.child,
    required this.onApply,
    this.onClear,
  });

  static Future<void> show(
    BuildContext context, {
    required ZiFilterPopup popup,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => popup,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            child,
            const SizedBox(height: 24),
            Row(
              children: [
                if (onClear != null)
                  TextButton(
                    onPressed: onClear,
                    child: const Text('Clear'),
                  ),
                const Spacer(),
                ElevatedButton(
                  onPressed: onApply,
                  child: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
