import 'package:doctorola/componets/divider_section.dart';
import 'package:doctorola/componets/login_background_welcome.dart';
import 'package:doctorola/componets/rounded_button.dart';
import 'package:doctorola/componets/social_login_section.dart';
import 'package:doctorola/componets/text_field_form.dart';

import 'package:doctorola/utils/colors.dart';
import 'package:doctorola/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackgroundAndWelcome(
        start: Column(
          children: [
            const TextFieldAndButton(
              obScuretext: false,
              text: "Email or Mobile",
              icon: Icon(
                Icons.mail_rounded,
                color: aPrimaryAppBarColor,
              ),
            ),
            const TextFieldAndButton(
              obScuretext: true,
              text: "Password",
              icon: Icon(
                Icons.lock_rounded,
                color: aPrimaryAppBarColor,
              ),
              subIcon:
                  Icon(Icons.visibility_rounded, color: aPrimaryAppBarColor),
            ),
            const SizedBox(
              height: 20,
            ),
            WelcomeFlatButton(
              color: aPrimaryColor,
              text: 'LOGIN',
              press: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have account?"),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.signupPage,),
                    child: const Text(
                      "SingUp",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const DividerSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialLogin(img: "assets/icons/facebook.svg"),
                SocialLogin(img: "assets/icons/twitter.svg"),
                SocialLogin(img: "assets/icons/google-plus.svg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
