import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:medicine_warehouse/services/search_category_service.dart';
import 'package:medicine_warehouse/services/search_medicin.dart';
import 'package:medicine_warehouse/widgets/customCard.dart';
import 'package:medicine_warehouse/widgets/customCategoryCard.dart';

class SearchPage extends StatefulWidget {
  static String id = 'SearchPage';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String dropdownvalue = "category";
  String? searchingInput;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int getCrossAxisCount() {
      if (width > 1000)
        return 6;
      else if (width > 600)
        return 3;
      else
        return 2;
    }

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF0F919E),
              Color(0xFF3AAFB8),
              Color(0xFF63CAD1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
        ),
        title: TextField(
          decoration: InputDecoration(
            iconColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
          ),
          onSubmitted: (value) {
            searchingInput = value;
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: DropdownButton<String>(
                dropdownColor: kcolor,
                value: dropdownvalue,
                icon: Icon(Icons.filter_list),
                style: TextStyle(color: Colors.white),
                items: const [
                  DropdownMenuItem<String>(
                      value: "category",
                      child: Text(
                        "category",
                        style: TextStyle(fontSize: 20),
                      )),
                  DropdownMenuItem<String>(
                      value: "medicin",
                      child: Text("medicin", style: TextStyle(fontSize: 20))),
                ],
                onChanged: (value) {
                  setState(() {
                    dropdownvalue = value!;
                  });
                }),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child:
              //  FutureBuilder(
              //     future:dropdownvalue == "category"? SearchCategoryService().getSearchCategory(category:searchingInput! ):SearchMedicinesService().getSearchMedicines( medicin: searchingInput!),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //  List<ProductModel> products = snapshot.data!;
              //return
              GridView.builder(
                  //  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: getCrossAxisCount(),
                      childAspectRatio: dropdownvalue == "category" ? 1.2 : 1.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return dropdownvalue == "category"
                        ? CustomCategoryCard(
                            //  categoty: products[index],
                            )
                        : CustomCard(
                            //  product: products[index],
                            );
                  }) //;
          //  }else {
          //   return Center(child: CircularProgressIndicator());
          //}
          //  }
          //),
          ),
    );
  }
}
