import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/provider/login_provider.dart';
import 'package:grocery_app/screen/reset_password_screen.dart';
import 'package:grocery_app/widget/screen_background.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static String get routeName => "/loginScreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, provider, _) {
        return ScreenBackground(
            children: [
              SizedBoxHelper.sizedBox20,
              Assets.appIcon.image(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              SizedBoxHelper.sizedBox20,
              CustomTextField(
                controller: TextEditingController(),
                hintText: AppStrings.email,
                iconData: Icons.email,
                errorMessage: provider.emailError,
              ),
              SizedBoxHelper.sizedBox10,
              CustomTextField(
                controller: TextEditingController(),
                hintText: AppStrings.password,
                iconData: Icons.password,
                errorMessage: provider.passwordError,
              ),
              SizedBoxHelper.sizedBox10,
              CustomButtonWidget(
                title: AppStrings.login,
                onTap: () {},
              ),
              SizedBoxHelper.sizedBox10,
              InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
                },
                child: RichText(
                    text: TextSpan(
                        text: "${AppStrings.createAnAccount}, ",
                        style: AppTextStyles.grey696969_18,
                        children: [
                      TextSpan(
                          text: AppStrings.signUp, style: AppTextStyles.blue_20Bold)
                    ])),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
                },
                child: Text("Reset Password", style: AppTextStyles.grey696969_18),
              ),
            ],
        
        );
      }
    );
  }
}
