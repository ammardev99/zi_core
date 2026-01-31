import 'package:flutter/material.dart';

class ZiProgressIndicator extends StatelessWidget {
  final double? value; // null = indeterminate

  const ZiProgressIndicator({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      minHeight: 4,
      borderRadius: BorderRadius.circular(8),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
