import 'dart:convert';

import 'package:doctorola/componets/home_componets/catalog_grid_data.dart';
import 'package:doctorola/componets/home_componets/doctor_list_field.dart';
import 'package:doctorola/componets/home_componets/top_rated_doctor.dart';

import 'package:flutter/material.dart';

import 'package:doctorola/componets/home_componets/catagory_title.dart';
import 'package:doctorola/componets/home_componets/search_feild.dart';
import 'package:doctorola/componets/home_componets/welcome_text.dart';
import 'package:doctorola/data/catdata.dart';
import 'package:doctorola/utils/colors.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/profile_img.png"),
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.grey[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HomeWelcomeText(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SearchFieldSection(),
                ),
              ],
            ),
            const CatagoryTittle(),
            const CatalogFieldGrid(),
            const TopRatedDoctor(),
            const DoctorList(),
          ],
        ),
      ),
    );
  }
}

class CatalogFieldGrid extends StatefulWidget {
  const CatalogFieldGrid({
    Key? key,
  }) : super(key: key);

  @override
  State<CatalogFieldGrid> createState() => _CatalogFieldGridState();
}

class _CatalogFieldGridState extends State<CatalogFieldGrid> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final jsonFile =
        await rootBundle.loadString("assets/files/catalogJson.json");
    final dataDecode = jsonDecode(jsonFile);
    final dataBaseFile = dataDecode["catalog"];
    CatData.catlogData = List.from(dataBaseFile)
        .map<CatalogData>((item) => CatalogData.fromMap(item))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: CatData.catlogData.length,
        itemBuilder: (BuildContext context, index) {
          final item = CatData.catlogData[index];
          return DataView(item: item);
        },
      ),
    );
  }
}
