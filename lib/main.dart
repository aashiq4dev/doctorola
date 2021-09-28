import 'package:doctorola/pages/home.dart';
import 'package:doctorola/pages/login_page.dart';
import 'package:doctorola/pages/singup_page.dart';
import 'package:doctorola/pages/welcome_page.dart';
import 'package:doctorola/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctorola',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.welcomePage,
      routes: {
        AppRoutes.homePage: (context) => const MyHomePage(),
        AppRoutes.welcomePage: (context) => const WelcomePage(),
        AppRoutes.loginPage: (context) => const LoginPage(),
        AppRoutes.signupPage: (context) => const SignUpPage(),
      },
    );
  }
}