import 'package:doctorola/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SocialLogin extends StatelessWidget {
  final String img;
  const SocialLogin({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: aPrimaryAppBarColor,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          margin:const EdgeInsets.all(7),
          child: SvgPicture.asset(img),
        ),
      ),
    );
  }
}
