import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/app/mixins/app_logger.dart';

class GlobalErrorHandler with AppLogger{

  GlobalErrorHandler({required Widget child}) {
    if(kReleaseMode) {
      ErrorWidget.builder = (_) => const SizedBox();
    }

    FlutterError.onError = _handleFlutterError;

    runZonedGuarded(() {
      runApp(child);
    }, (error, stack) {

    });

  }

  void _handleFlutterError(FlutterErrorDetails details) {
    if(kReleaseMode) {
      // send to error server
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  }
}