library;

import 'package:flutter/widgets.dart';

/// DO NOT CHANGE WITHOUT VERSION TAG
const String ziCoreName = 'zi_core';
const String ziCoreAuthor = 'Ammar Shafiq - +92 342 4264494';
const String ziCoreTagDate = 'zi_core';
const String ziCoreBuild = '1';

// updaet on every push
// const String ziCorePushDate = '6 Feb 26 - 11:40pm';
const String ziCorePushDate = '6 Feb 26 - 11:40pm';
const String ziCorePush = '4';
const String ziCoreBeta = '0.1.1 ($ziCorePush) Beta';
const String latestCommit = 'feat: add media - images components';

// updaet on every version publish
const String ziCoreVersion = '0.1.0';
const String ziCorePatch = '$ziCoreBeta - $latestCommit';

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
      return ziCoreBeta;
    case ZiCoreHealthType.author:
      return ziCoreAuthor;
    case ZiCoreHealthType.patch:
      return ziCorePatch;
    case ZiCoreHealthType.full:
      return '''
              [ZI_CORE Connected]
              name: $ziCoreName
              version: $ziCoreVersion
              channel: $ziCoreBeta
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
