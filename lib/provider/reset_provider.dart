import 'package:grocery_app/all_imports.dart';

class ResetProvider extends ChangeNotifier{
   TextEditingController emailController = TextEditingController();
   
   String _emailError = "";
  String get emailError => _emailError;

}