import 'package:flutter/material.dart';

class CatagoryTittle extends StatelessWidget {
  const CatagoryTittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5),
      
      child: Stack(
        fit: StackFit.loose,
        children: const [
          Text(
            "Catagory",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
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
