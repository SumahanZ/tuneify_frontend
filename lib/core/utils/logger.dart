import 'package:logger/logger.dart';

class MyLogger {
  static final _logger = Logger(
    filter: null,
    printer: PrettyPrinter(),
    output: null,
  );

  static void sendLog({required String text}) {
    _logger.d(text, time: DateTime.now());
  }
}

class MyErrorLogger {
  static void sendLog({
    required String text,
    required Object error,
    required StackTrace stackTrace,
  }) {
    MyLogger._logger
        .e(text, time: DateTime.now(), error: error, stackTrace: stackTrace);
  }
}
