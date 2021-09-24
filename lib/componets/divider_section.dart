import 'package:flutter/material.dart';


class DividerSection extends StatelessWidget {
  const DividerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 2,
              width: size.width,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
        ),
        const Text("Or"),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 2,
              width: size.width,
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
