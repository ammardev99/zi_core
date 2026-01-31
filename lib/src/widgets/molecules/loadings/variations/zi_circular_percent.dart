import 'package:flutter/material.dart';
import '../zi_loading_style.dart';

class ZicircularPercent extends StatelessWidget {
  final ZiLoadingStyle ziLoadstyle;

  const ZicircularPercent({super.key, required this.ziLoadstyle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: ziLoadstyle.size,
          height: ziLoadstyle.size,
          child: CircularProgressIndicator(
            strokeWidth: ziLoadstyle.strokeWidth,
            value: ziLoadstyle.value,
            color: ziLoadstyle.color,
            backgroundColor: ziLoadstyle.backgroundColor,
          ),
        ),
        if (ziLoadstyle.showPercentage && ziLoadstyle.value != null)
          Text(
            '${(ziLoadstyle.value! * 100).round()}%',
            style:
                ziLoadstyle.textStyle ?? Theme.of(context).textTheme.labelSmall,
          ),
      ],
    );
  }
}
