import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/helper/validation_helper.dart';
import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/model/dto/updateuser_dto.dart';
import 'package:grocery_app/model/error/firebase_error.dart';
import 'package:grocery_app/repo/auth_repo/auth_repo_impl.dart';

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

   AuthRepoImpl authRepoImpl = AuthRepoImpl();
  Future updateUserInfo(String userId, String idToken) async {
    //final imageUrl = await uploadUserImage(userId);
    await authRepoImpl.updateUserInfo(UpdateUserInfoDto(
      displayName: userNameController.text,
      idToken: idToken,
   //   photoUrl: imageUrl,
      returnSecureToken: true,
    ));
  }
   bool  validateForm(){
    _emailError  = ValidationHelper.validateEmail(emailController.text);
    _passwordError  = ValidationHelper.validatePassword(passwordController.text);
    _confirmedPasswordError = ValidationHelper.validateConfirmedPassword(passwordController.text,
     confirmedPasswordController.text);
     _userNameError = ValidationHelper.validateUserName(userNameController.text); 
     _profileImageError = selectedProfileImage == null? "Please select a profile Image":"";
    notifyListeners();
    if(_emailError.isEmpty &&_passwordError.isEmpty && _confirmedPasswordError.isEmpty 
    &&_userNameError.isEmpty && _profileImageError.isEmpty){
      return true;
    }
    else{
      return false;
    }
    
  }

  signUp()async{
    if(true){
     try{
      final response = await authRepoImpl.signUp(SignupDto(username:userNameController.text ,
      email: emailController.text, 
      signUpLoad:SignUpLoad(email: emailController.text,password: passwordController.text,
      returnSecureToken: true), imageUrl: ""));
     // updateUserInfo(response.idToken!);

  } on DioError catch (e) {
        
        FirebaseAuthError firebaseAuthError = FirebaseAuthError.fromJson(
            e.response!.data as Map<String, dynamic>);
        log(firebaseAuthError.error!.message!.toString());
        SnackBarHelper.errorSnackBar(firebaseAuthError.error!.message!);
      }
 
}
}
} 