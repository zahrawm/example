
import 'package:grocery_app/all_imports.dart';

class  LoginProvider extends ChangeNotifier{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /// creating a getter for Email
  String _emailError = "";
  String get  emailError => _emailError;

   /// creating a getter for Email
  String _passwordError = "";
  String get  passwordError => _passwordError;
}