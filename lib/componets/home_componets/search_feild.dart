import 'package:doctorola/utils/colors.dart';
import 'package:flutter/material.dart';

class SearchFieldSection extends StatelessWidget {
  const SearchFieldSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 5,
          child: TextField(
            cursorColor: aPrimaryAppBarColor,
            style: TextStyle(
              fontSize: 20,
              color: aPrimaryAppBarColor,
            ),
            autofocus: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 20,
                color: aPrimaryColor,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Material(
            color: aPrimaryColor,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.pink,
              onTap: () {},
              child: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 56,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
