import 'package:doctorola/data/catdata.dart';
import 'package:doctorola/utils/colors.dart';
import 'package:flutter/material.dart';

class DataView extends StatelessWidget {
  final CatalogData item;
  const DataView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 100,
      height: 150,
      decoration: BoxDecoration(
        color: aPrimaryAppBarColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 5),
                  child: Image.asset(
                    item.catImg,
                    color: Colors.white,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 1),
                  child: Text(
                    item.catName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  
                 
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white30.withOpacity(.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      item.onDuty,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
