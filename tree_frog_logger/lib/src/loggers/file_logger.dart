import 'dart:io';

import 'package:tree_frog_logger/src/config/log_config.dart';
import 'package:tree_frog_logger/src/utils/logger_formatter.dart';

/// Logs messages to a file
class FileLogger {
  /// Logs a message to a file with the specified [level].
  /// [level] defaults to `LogConfig.defaultLevel` if not specified.
  void log(String message, {String level = LogConfig.defaultLevel}) {
    final formattedMessage = LoggerFormatter().format(message, level);
    File(LogConfig.logFileName)
        .writeAsStringSync('$formattedMessage\n', mode: FileMode.append);
  }
}
