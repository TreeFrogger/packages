import 'package:tree_frog_logger/src/config/log_config.dart';

class LoggerFormatter {
  String format(String message, String level) {
    String emoji;
    var timestamp = '';

    if (LogConfig.includeTimestamp) {
      timestamp = DateTime.now().toString();
    }

    switch (level) {
      case LogConfig.levelInfo:
        emoji = '💡'; // Lightbulb for info messages
        break;
      case LogConfig.levelWarning:
        emoji = '⚠️'; // Warning sign for warning messages
        break;
      case LogConfig.levelError:
        emoji = '❌'; // Cross mark for error messages
        break;
      default:
        emoji = '';
    }

    return '$timestamp $emoji $level: $message';
  }
}
