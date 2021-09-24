import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget start;
  const WelcomeBackground({Key? key, required this.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      child: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Image.asset(
                "assets/svgImage/main_top.png",
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/svgImage/main_bottom.png",
                width: size.width * 0.2,
              ),
            ),
            start,
          ],
        ),
      ),
    );
  }
}
