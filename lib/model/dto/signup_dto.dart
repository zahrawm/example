class SignupDto{
  String username;
  String email;
  SignUpLoad signUpLoad;
  String imageUrl;
  SignupDto({required this.username,
   required this.email, 
   required this.signUpLoad,
    required this.imageUrl});
}
class SignUpLoad{
  String email;
  String password;
  bool returnSecureToken;
  SignUpLoad({required this. email,
  required this.password, required this.returnSecureToken });

  // Converting the request into Json
Map <String, dynamic> toJson() => {
  "email": email,
  "password" : password,
  "returnSecureToken" :returnSecureToken
};
}
