import 'package:doctorola/utils/colors.dart';
import 'package:doctorola/utils/routes.dart';
import 'package:flutter/material.dart';


class WelcomeFlatButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function()? press;

  const WelcomeFlatButton({
    Key? key,
    required this.color,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.pink,
          onTap: press!,
          child: AnimatedContainer(
            alignment: Alignment.center,
            width: 300,
            height: 55,
            duration: const Duration(
              seconds: 2,
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WelcomeFlatButton(
          text: 'Go',
          color: aPrimaryAppBarColor,
          press: () =>Navigator.pushNamed(context, AppRoutes.homePage),
        ),
        WelcomeFlatButton(
          text: 'LOGIN',
          color: Colors.black54,
          press: () =>Navigator.pushNamed(context, AppRoutes.loginPage),
        ),
        WelcomeFlatButton(
          text: 'SIGN UP',
          color: Colors.teal,
          press: () =>Navigator.pushNamed(context, AppRoutes.signupPage),
        ),
      ],
    );
  }
}

