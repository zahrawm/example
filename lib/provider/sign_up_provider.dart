import 'dart:io';

import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/helper/validation_helper.dart';

class SignUpProvider extends ChangeNotifier{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  File? selectedProfileImage;

  String _emailError = "";
  String get emailError => _emailError;

  String _passwordError = "";
  String get passwordError => _passwordError;

   String _confirmedPasswordError = "";
  String get confirmedPasswordError => _confirmedPasswordError;

   String _userNameError = "";
  String get userNameError =>_userNameError;

String _profileImageError = "";
  String get profilemageError =>_profileImageError;
  // updating the profileImage
  getProfileImage(File file){
    selectedProfileImage = file;
    notifyListeners();
  }
   bool _obscureText =  true;
  bool get obscureText => _obscureText;
  updateObscureText(){
    _obscureText =! obscureText;
    notifyListeners();
  }
   validateForm(){
    _emailError  = ValidationHelper.validateEmail(emailController.text);
    _passwordError  = ValidationHelper.validatePassword(passwordController.text);
    _confirmedPasswordError = ValidationHelper.validateConfirmedPassword(passwordController.text,
     confirmedPasswordController.text);
     _userNameError = ValidationHelper.validateUserName(userNameController.text); 
     _profileImageError = selectedProfileImage == null? "Please select a profile Image":"";
    notifyListeners();

  }
}