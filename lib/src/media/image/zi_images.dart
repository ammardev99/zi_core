import 'package:flutter/material.dart';

import '../../theme/zi_theme_io.dart';

class ZiImages {
  ZiImages._();

  /// Used when path is null OR load fails
  static const Widget defaultImage = Icon(
    Icons.image,
    size: 40,
    color: ZiColors.border,
  );
}
