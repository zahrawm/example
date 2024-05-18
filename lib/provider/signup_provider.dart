
import 'package:grocery_app/all_imports.dart';

class SignupProvider extends ChangeNotifier{
    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
 

  /// creating a getter for Email
  String _emailError = "";
  String get  emailError => _emailError;

   /// creating a getter for Email
  String _passwordError = "";
  String get  passwordError => _passwordError;

  String _confirmedPasswordError = "";
  String get  confirmedPasswordError => _confirmedPasswordError;

  String _usernameError = "";
  String get  usernameError => _usernameError;
}