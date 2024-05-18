import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/provider/signup_provider.dart';
import 'package:grocery_app/widget/image_picker_widget.dart';
import 'package:grocery_app/widget/screen_background.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/signUpScreen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SignupProvider>(
      builder: (context,provider,_) {
        return ScreenBackground(
            children: [
              ImagePickerWidget(),
              CustomTextField(
                controller: provider.userNameController,
                hintText: AppStrings.username,
                iconData: Icons.person,
                errorMessage: provider.usernameError,
              ),
              SizedBoxHelper.sizedBox10,
              CustomTextField(
                controller: provider.emailController,
                hintText: AppStrings.email,
                iconData: Icons.email,
                errorMessage: provider.emailError,
              ),
              SizedBoxHelper.sizedBox10,
              CustomTextField(
                controller: provider.passwordController,
                
                hintText: AppStrings.password,
                iconData: Icons.password,
                errorMessage: provider.passwordError,
              ),
              SizedBoxHelper.sizedBox10,
              CustomTextField(
                controller: TextEditingController(),
                hintText: AppStrings.confirmPassword,
                iconData: Icons.password,
                errorMessage: provider.confirmedPasswordError,
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
    );
  }
}
