library;

import 'package:flutter/widgets.dart';

/// DO NOT CHANGE WITHOUT VERSION TAG
const String ziCoreName = 'zi_core';
const String ziCoreVersion = 'v0.1.0 - stable';
const String ziCoreChannel = 'master - beta';
const String ziCoreAuthor = 'AmmarDev99';

String ziCoreHealth([String? branch]) {
  return 'connected: $ziCoreName | ${branch == null ? ziCoreVersion : ziCoreChannel} | by $ziCoreAuthor';
}

Widget ziCoreHealthShow([String? branch]) {
  return Text(
    'connected: $ziCoreName | ${branch == null ? ziCoreVersion : ziCoreChannel} | by $ziCoreAuthor',
    textAlign: TextAlign.center,
  );
}
