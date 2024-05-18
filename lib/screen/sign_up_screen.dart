import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/widget/image_picker_widget.dart';
import 'package:grocery_app/widget/screen_background.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/signUpScreen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        children: [
          ImagePickerWidget(),
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.username,
            iconData: Icons.person,
          ),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.email,
            iconData: Icons.email,
          ),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.password,
            iconData: Icons.password,
          ),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
            controller: TextEditingController(),
            hintText: AppStrings.confirmPassword,
            iconData: Icons.password,
          ),
          SizedBoxHelper.sizedBox10,
          CustomButtonWidget(
            title: AppStrings.signUp,
            onTap: () {},
          ),
          SizedBoxHelper.sizedBox10,
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
            child: RichText(
                text: TextSpan(
                    text: "${AppStrings.alreadyHaveAnAccount}? ",
                    style: AppTextStyles.grey696969_18,
                    children: [
                  TextSpan(
                      text: AppStrings.login,
                      style: AppTextStyles.blue_20Bold)
                ])),
          ),
        ],
      );
  }
}
