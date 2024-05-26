
import 'package:grocery_app/const/keys.dart';

class AppApiConst {
static String get signUp => getEndpoint("signUp");
  static String get updateUsesInfo => getEndpoint("update");
  static String get signInWithPassword => getEndpoint("signInWithPassword");
  static String get sendOobCode => getEndpoint("sendOobCode");

  static String getEndpoint(String type) {
    return "https://identitytoolkit.googleapis.com/v1/accounts:$type?key=$firebaseApiKey";
  }
}
