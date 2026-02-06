library;

import 'package:flutter/widgets.dart';

/// DO NOT CHANGE WITHOUT VERSION TAG
const String ziCoreName = 'zi_core';
const String ziCoreVersion = '0.1.0';
const String ziCoreChannel = '0.1.1 Beta';
const String ziCoreAuthor = 'AmmarDev99';
const String ziCorePatch =  '$ziCoreChannel - Fixed export paths & health meta layer';

// Init
void ziCoreInit() {
  assert(() {
    debugPrint(ziCoreHealth());
    return true;
  }());
}

/// Health types
enum ZiCoreHealthType {
  status,
  version,
  channel,
  author,
  patch,
  full,
}

/// Core health API
String ziCoreHealth({ZiCoreHealthType type = ZiCoreHealthType.full}) {
  switch (type) {
    case ZiCoreHealthType.status:
      return 'connected';
    case ZiCoreHealthType.version:
      return ziCoreVersion;
    case ZiCoreHealthType.channel:
      return ziCoreChannel;
    case ZiCoreHealthType.author:
      return ziCoreAuthor;
    case ZiCoreHealthType.patch:
      return ziCorePatch;
    case ZiCoreHealthType.full:
      return '''
              [ZI_CORE Connected]
              name: $ziCoreName
              version: $ziCoreVersion
              channel: $ziCoreChannel
              patch: $ziCorePatch
              author: $ziCoreAuthor
              ''';
  }
}

/// UI Widget
@Deprecated("ziCoreHealth() or ziCoreHealth(ZiCoreHealthType.full)")
Widget ziCoreHealthShow({ZiCoreHealthType type = ZiCoreHealthType.full}) {
  return Text(
    ziCoreHealth(type: type),
    textAlign: TextAlign.center,
  );
}
