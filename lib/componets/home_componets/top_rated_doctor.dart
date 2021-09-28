import 'package:flutter/material.dart';


class TopRatedDoctor extends StatelessWidget {
  const TopRatedDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5),
      child: Stack(
        fit: StackFit.loose,
        children: const [
          Text(
            "Top Rated",
            style: TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "See all..",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
