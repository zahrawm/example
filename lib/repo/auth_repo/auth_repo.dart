import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/model/dto/updateuser_dto.dart';

abstract class AuthRepo{
  Future <void> signUp(SignupDto signUpDto);
   Future<void> updateUserInfo(UpdateUserInfoDto updateUserInfoDto);
   //Updating imageUrl
   Future<String> uploadProfileImage(String userId);
}