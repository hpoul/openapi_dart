// https://github.com/stablekernel/aqueduct/blob/master/aqueduct/lib/src/cli/running_process.dart

import 'dart:async';
import 'dart:io';

import 'package:openapi_base/src/server/openapi_server_base.dart';

typedef _StopProcess = Future Function(String reason);

class StoppableProcess extends StoppableProcessBase {
  StoppableProcess(Future<dynamic> Function(String reason) onStop)
      : _stop = onStop {
    final l1 = ProcessSignal.sigint.watch().listen((_) {
      stop(0, reason: 'Process interrupted.');
    });
    _listeners.add(l1);

    if (!Platform.isWindows) {
      final l2 = ProcessSignal.sigterm.watch().listen((_) {
        stop(0, reason: 'Process terminated by OS.');
      });
      _listeners.add(l2);
    }
  }

  @override
  Future<int> get exitCode => _completer.future;

  final List<StreamSubscription> _listeners = [];

  final _StopProcess _stop;
  final Completer<int> _completer = Completer<int>();

  @override
  Future stop(int exitCode, {String? reason}) async {
    if (_completer.isCompleted) {
      return;
    }

    await Future.forEach(_listeners, (StreamSubscription sub) => sub.cancel());
    await _stop(reason ?? 'Terminated normally.');
    _completer.complete(exitCode);
  }
}
