/// Configuration settings for the logger
class LogConfig {
  /// Log levels
  static const levelInfo = 'INFO';
  static const levelWarning = 'WARNING';
  static const levelError = 'ERROR';

  /// Default log level
  static const defaultLevel = levelInfo;

  /// Whether to include timestamp in log entries
  static const includeTimestamp = true;

  /// Filename for the FileLogger
  static const logFileName = 'log.txt';
}
