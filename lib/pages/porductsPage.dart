import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/pages/searchPage.dart';
import 'package:medicine_warehouse/widgets/customCard.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ProductsPage extends StatelessWidget {
  int getCrossAxisCount() {
    if (kIsWeb) return 6;
    return 2;
  }

  const ProductsPage({super.key});
  static String id = "ProductsPage";
  @override
  Widget build(BuildContext context) {
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
        title: Text("Category Name"),
        actions: [
          IconButton(
              padding: EdgeInsets.symmetric(horizontal: 16),
              onPressed: () {
                Navigator.pushNamed(context, SearchPage.id);
              },
              icon: Icon(
                Icons.search,
              )),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child:
              // FutureBuilder(
              //     //future: AllMedicinesService().getAllmedicines(),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //  List<MedicineModel> medicines = snapshot.data!;
              //return
              GridView.builder(
                  //  itemCount: medicines.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      childAspectRatio: 1.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return CustomCard(
                        //  product: medicines[index],
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
