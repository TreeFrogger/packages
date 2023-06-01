import 'package:tree_frog_logger/src/config/log_config.dart';
import 'package:tree_frog_logger/src/utils/logger_formatter.dart';

/// Logs messages to a database
class DBLogger {
  /// Logs a message to a database with the specified [level].
  /// [level] defaults to `LogConfig.defaultLevel` if not specified.
  void log(
    String message, {
    String level = LogConfig.defaultLevel,
  }) {
    final formattedMessage = LoggerFormatter().format(message, level);
    // Implement DB logging here
    // Todo(czar): implement db logging, https://www.github.com
    throw UnimplementedError();
  }
}
