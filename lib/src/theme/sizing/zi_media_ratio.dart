class ZiRatio {
  final double value;
  const ZiRatio._(this.value);

  static const r1x1 = ZiRatio._(1);
  static const r3x4 = ZiRatio._(3 / 4);
  static const r16x9 = ZiRatio._(16 / 9);

  factory ZiRatio.custom(double w, double h) => ZiRatio._(w / h);
}
