import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/provider/reset_password_provider.dart';
import 'package:grocery_app/widget/screen_background.dart';
import 'package:provider/provider.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String routeName = "/resetPasswordScreen";
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ResetPasswordProvider>(
      builder: (context,provider, _) {
        return ScreenBackground(
          children: [
            SizedBoxHelper.sizedBox100,
            Assets.appIcon.image(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBoxHelper.sizedBox20,
            CustomTextField(
              controller:provider.emailController,
              hintText: AppStrings.email,
              iconData: Icons.email,
              errorMessage: provider.emailError,
            ),
            SizedBoxHelper.sizedBox10,
            CustomButtonWidget(
              title: AppStrings.resetPassword,
              onTap: () {},
            ),
          ],
        );
      }
    );
  }
}
