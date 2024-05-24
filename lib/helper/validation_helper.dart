class ValidationHelper{
  static String validateEmail(String value) => value.isEmpty ? "Enter a proper email" : "";
  static String validatePassword(String value) => 
  value.isEmpty ? "Enter a proper password" : "";
  static String validateConfirmedPassword(String value1, String value2) => 
  value1== value2 ? "" : "Confirm password does not match with the password";
  static String validateUserName(String value) => 
  value.isEmpty ? "Enter a proper userName" : "";

  


}