import 'package:flutter/foundation.dart';

class Logger {
  static void message(String value,String tag) {
    debugPrint("👉$tag: $value");
  }

  static void success(String value,String tag) {
    debugPrint("✅$tag: $value");
  }

  static void error(String value,String tag) {
    debugPrint("❌$tag: $value");
  }
}
