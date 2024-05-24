import 'package:dio/dio.dart';
import 'package:grocery_app/const/app_api_const.dart';
import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/repo/auth_repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  Dio dio = Dio();
  @override
  Future<void> signUp(SignupDto signUpDto) async{
    await dio.post(AppApiConst.signUp, options: 
    Options(contentType: "application/json"));
   
  }

}