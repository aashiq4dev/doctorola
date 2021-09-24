import 'package:flutter/material.dart';

class TextFieldAndButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final Widget? subIcon;
  final bool obScuretext;

  const TextFieldAndButton({
    Key? key,
    required this.text,
    required this.icon,
    this.subIcon, required this.obScuretext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,

        left: 15,
        right: 15,
      ),
      child: Column(
        children: [
          Container(
            width: 330,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  obscureText: obScuretext,
                  cursorColor: Colors.black87,
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    hintText: text,
                    border: InputBorder.none,
                    icon: icon,
                    suffixIcon: subIcon,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
