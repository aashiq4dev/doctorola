import 'package:doctorola/utils/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: aPrimaryAppBarColor,
      appBar: AppBar(
        title: const Text("Doctorola"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: aPrimaryAppBarColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/profile_img.png"),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.grey[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
           Padding(
             padding:  EdgeInsets.only(top: 15,left: 15),
             child:  Text(
                "Welcome Badhon",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
           ),
          ],
        ),
      ),
    );
  }
}
