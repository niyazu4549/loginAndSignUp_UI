import 'package:flutter/material.dart';
import 'package:login_and_signup_screens/common_screens.dart';

void main() {
  runApp(const LoginAndSignUpScreens());
}

class LoginAndSignUpScreens extends StatelessWidget {
  const LoginAndSignUpScreens({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommonScreens(),
    );
  }
}


