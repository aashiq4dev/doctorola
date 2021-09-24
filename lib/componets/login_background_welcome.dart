import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginBackground extends StatelessWidget {
  final Widget start;

  const LoginBackground({Key? key, required this.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/svgImage/main_top.png",
            width: size.width * 0.3,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/svgImage/login_bottom.png",
            width: size.width * 0.3,
          ),
        ),
        start,
      ],
    );
  }
}

class LoginBackgroundAndWelcome extends StatelessWidget {
  final Widget start;

  const LoginBackgroundAndWelcome({Key? key, required this.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  LoginBackground(
        start: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Welcome to Login",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      width: size.width * 0.6,
                    ),
                    start,
                  ],
                ),
              ),
            ),

    );
  }
}
