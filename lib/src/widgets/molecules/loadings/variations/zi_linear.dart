import 'package:flutter/material.dart';
import '../zi_loading_style.dart';

class ZiLinear extends StatelessWidget {
  final ZiLoadingStyle ziLoadstyle;

  const ZiLinear({super.key, required this.ziLoadstyle});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: ziLoadstyle.value,
      color: ziLoadstyle.color,
      backgroundColor: ziLoadstyle.backgroundColor,
      minHeight: ziLoadstyle.strokeWidth,
    );
  }
}
