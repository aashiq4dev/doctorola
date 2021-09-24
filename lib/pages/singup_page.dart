import 'package:doctorola/componets/divider_section.dart';
import 'package:doctorola/componets/login_background_welcome.dart';
import 'package:doctorola/componets/rounded_button.dart';
import 'package:doctorola/componets/social_login_section.dart';
import 'package:doctorola/componets/text_field_form.dart';
import 'package:doctorola/utils/colors.dart';
import 'package:doctorola/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        start: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome To Join",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset("assets/icons/signup.svg"),
                  const TextFieldAndButton(
                    icon: Icon(
                      Icons.person_outline_rounded,
                      color: aPrimaryAppBarColor,
                    ),
                    text: 'First name',
                    obScuretext: false,
                  ),
                  const TextFieldAndButton(
                    icon: Icon(
                      Icons.mail_rounded,
                      color: aPrimaryAppBarColor,
                    ),
                    text: 'Email or Mobile',
                    obScuretext: false,
                  ),
                  const TextFieldAndButton(
                    icon: Icon(
                      Icons.lock_rounded,
                      color: aPrimaryAppBarColor,
                    ),
                    text: 'Password',
                    obScuretext: false,
                    subIcon: Icon(Icons.visibility_rounded,
                        color: aPrimaryAppBarColor),
                  ),
                  WelcomeFlatButton(
                    color: Colors.teal,
                    text: "SIGN UP",
                    press: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have already an account?"),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.loginPage),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
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
          ),
        ),
      ),
    );
  }
}
