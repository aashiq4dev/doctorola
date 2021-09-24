import 'package:doctorola/componets/rounded_button.dart';
import 'package:doctorola/componets/welcome_page_background.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: WelcomeBackground(
        start: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Welcome to Doctorola",
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
                    "assets/icons/chat.svg",
                    width: size.width * 0.7,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const RoundedButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
