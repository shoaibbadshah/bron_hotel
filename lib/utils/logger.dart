import 'dart:developer' as developer;



class UtilLogger {
  static log([String tag = "LOGGER", dynamic msg]) {

  }

  ///Singleton factory
  static final _instance = UtilLogger._internal();

  factory UtilLogger() {
    return _instance;
  }

  UtilLogger._internal();
}
