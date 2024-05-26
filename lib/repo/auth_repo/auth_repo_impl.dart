import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:grocery_app/const/app_api_const.dart';
import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/model/dto/updateuser_dto.dart';
import 'package:grocery_app/repo/auth_repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  Dio dio = Dio(BaseOptions(contentType:"application/json" ));
  @override
  Future<void> signUp(SignupDto signUpDto) async{
    print(AppApiConst.signUp);
    final reponse= await dio.post(AppApiConst.signUp, data: signUpDto.signUpLoad.toJson(),
   );
  log(reponse.data.toString());
  }

  @override
  Future<void> updateUserInfo(UpdateUserInfoDto updateUserInfoDto) async {
    final response = await dio.post(
      AppApiConst.updateUsesInfo,
      data: updateUserInfoDto.toJson(),
    );
    log(response.data.toString());
  }
  
  @override
  Future<String> uploadProfileImage(String userId) async {
  await FirebaseStorage.instance.ref("user_profile_image").child(userId);
  }


}