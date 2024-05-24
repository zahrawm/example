
import 'package:grocery_app/provider/login_provider.dart';
import 'package:grocery_app/provider/reset_provider.dart';
import 'package:grocery_app/provider/sign_up_provider.dart';
import 'package:grocery_app/screen/login_screen.dart';
import 'package:grocery_app/screen/reset_password_screen.dart';
import 'package:grocery_app/screen/sign_up_screen.dart';
import 'package:provider/provider.dart';


import 'all_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
         ChangeNotifierProvider(create: (_) => SignUpProvider()),
          ChangeNotifierProvider(create: (_) => ResetProvider()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: SnackBarHelper.scaffoldMessengerKey,
        title: AppStrings.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute:LoginScreen.routeName ,
        routes: {
          LoginScreen.routeName: (_)=>const LoginScreen(),
          SignUpScreen.routeName: (_)=>const SignUpScreen(),
          ResetPasswordScreen.routeName: (_)=>const ResetPasswordScreen(),
      
        },
      ),
    );
  }
}

