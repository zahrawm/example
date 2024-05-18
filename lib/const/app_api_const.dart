import 'package:grocery_app/all_imports.dart';

class AppApiConst {
  static String get signUp => getEndpoint(AppStrings.signUp);
  static String getEndpoint(String type) {
    return "https://identitytoolkit.googleapis.com/v1/accounts:$type?key=[API_KEY]";
  }
}
