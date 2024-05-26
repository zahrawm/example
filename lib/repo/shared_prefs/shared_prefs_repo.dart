import 'package:grocery_app/repo/shared_prefs/shared_prefs_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsImpl implements SharedPrefsRepo{
  @override
  Future<int> getExpiresToken()async {
   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   return sharedPreferences.getInt("expiresIn") ?? 0;
  }

  @override
  Future<String> getIdToken() {
    // TODO: implement getIdToken
    throw UnimplementedError();
  }
  
  @override
  Future<void> setIdToken(int idToken) {
    // TODO: implement setIdToken
    throw UnimplementedError();
  }

}