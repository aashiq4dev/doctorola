import 'package:doctorola/data/catdata.dart';
import 'package:flutter/material.dart';

class CatagoryGridView extends StatelessWidget {
  const CatagoryGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(
        itemCount: CatData.catlogData.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, i) {
          final items = CatData.catlogData[i];
          return Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset(
                  items.catImg,
                ),
                Text(items.catName)
              ],
            ),
          );
        },
      ),
    );
  }
}
