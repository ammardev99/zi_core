import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiToggleSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String? label;

  const ZiToggleSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (label != null) Text(label!, style: ZiTextStyles.bodyMedium),
        Switch.adaptive(
          value: value,
          onChanged: onChanged,
          activeColor: ZiColors.primary,
        ),
      ],
    );
  }
}
