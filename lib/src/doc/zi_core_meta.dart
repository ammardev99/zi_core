library;

import 'package:flutter/widgets.dart';

/// DO NOT CHANGE WITHOUT VERSION TAG
const String ziCoreName = 'zi_core';
const String ziCoreVersion = 'v0.1.0 - stable';
const String ziCoreChannel = 'master - beta';
const String ziCoreAuthor = 'AmmarDev99';

String ziCoreHealth() {
  return 'connected: $ziCoreName | $ziCoreVersion also available [$ziCoreChannel] | by $ziCoreAuthor';
}

Widget ziCoreHealthShow() {
  return Text(
      'connected: $ziCoreName | $ziCoreVersion also available [$ziCoreChannel] | by $ziCoreAuthor');
}
