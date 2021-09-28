import 'package:flutter/material.dart';


class HomeWelcomeText extends StatelessWidget {
  const HomeWelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            "Hi Badhon!",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
