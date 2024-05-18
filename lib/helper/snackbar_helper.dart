import 'package:grocery_app/all_imports.dart';

class SnackBarHelper {
  static var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static successSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.green148914,
        content: Text(message),
      ),
    );
  }

  static errorSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.redff0000,
        content: Text(message),
      ),
    );
  }
}
