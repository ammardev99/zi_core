import 'package:flutter/widgets.dart';

Widget ziGap(double w, {double? h, Widget? child}) {
  return SizedBox(
    width: w,
    height: h ?? w,
    child: child,
  );
}

Widget ziGapSrink(Widget? child) {
  return SizedBox.shrink(
    child: child,
  );
}

class ZiGapB extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;

  const ZiGapB(
    double value, {
    super.key,
    this.child,
  })  : width = value,
        height = value;

  const ZiGapB.wh(
    this.width,
    this.height, {
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
