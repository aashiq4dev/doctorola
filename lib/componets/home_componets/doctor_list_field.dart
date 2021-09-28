import 'dart:convert';

import 'package:doctorola/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({
    Key? key,
  }) : super(key: key);

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final jsonData = await rootBundle.loadString("assets/files/dataJson.json");
    final jsonDecodeData = jsonDecode(jsonData);
    final dataBase = jsonDecodeData["doctors"];
    DoctorCatalog.doctors = List.from(dataBase)
        .map<ApiData>((items) => ApiData.fromMap(items))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      margin: const EdgeInsets.all(15),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: DoctorCatalog.doctors.length,
        itemBuilder: (BuildContext context, i) {
          final items = DoctorCatalog.doctors[i];
          return DoctorField(item: items);
        },
      ),
    );
  }
}

class DoctorField extends StatelessWidget {
  final ApiData item;
  const DoctorField({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(item.img),
                Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(item.name,style:const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(item.drDesc),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
