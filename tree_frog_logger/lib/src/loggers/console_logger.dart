import 'package:tree_frog_logger/src/config/log_config.dart';
import 'package:tree_frog_logger/src/utils/logger_formatter.dart';

class ConsoleLogger {
  void log(
    String message, {
    String level = LogConfig.defaultLevel,
  }) {
    final formattedMessage = LoggerFormatter().format(message, level);
    print(formattedMessage);
  }
}
