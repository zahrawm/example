
import 'package:grocery_app/all_imports.dart';

class ResetPasswordProvider extends ChangeNotifier{
  TextEditingController emailController = TextEditingController();
  

  /// creating a getter for Email
  String _emailError = "";
  String get  emailError => _emailError;

   
}