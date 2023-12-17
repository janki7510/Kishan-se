import 'package:logger/logger.dart';

class TLoggerHelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
  //Customize the log levels based on your needs
  level: level.debug,
  );

  static void debug(String message){
    _logger.d(message);
  }

  static void info(String message){
    _logger.W(message);
  }

  static void warning(String message){
    _logger.W(message);
  }

  static void error(String message, [dynamic error]){
    _logger.e(message, error: error, statckTrace: StackTrace.current);
  }
}