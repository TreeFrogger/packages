import 'package:tree_frog_logger/src/config/log_config.dart';
import 'package:tree_frog_logger/src/loggers/console_logger.dart';
import 'package:tree_frog_logger/src/loggers/db_logger.dart';
import 'package:tree_frog_logger/src/loggers/file_logger.dart';

/// Represents the type of logger to be used
enum LoggerType {
  file,
  console,
  db,
}

/// Logs messages using the specified logger type
class Logger {
  /// Logs a message using the specified logger [type] and [level].
  /// [level] defaults to `LogConfig.defaultLevel` if not specified.
  static void log(
    String message,
    LoggerType type, [
    String level = LogConfig.defaultLevel,
  ]) {
    switch (type) {
      case LoggerType.file:
        FileLogger().log(message, level: level);
        break;
      case LoggerType.console:
        ConsoleLogger().log(message, level: level);
        break;
      case LoggerType.db:
        DBLogger().log(message, level: level);
        break;
      default:
        throw Exception('Invalid logger type');
    }
  }
}
