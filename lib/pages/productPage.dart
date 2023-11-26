import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/constants.dart';
import 'package:medicine_warehouse/models/medicine_model.dart';
import 'package:medicine_warehouse/pages/searchPage.dart';
import 'package:medicine_warehouse/widgets/customMedicin.dart';

import 'package:medicine_warehouse/models/Date.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  static String id = "ProductPage";

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final String scientificName = 'scientificName';

  final String commercialName = 'commercialName';

  final String category = 'category';

  final String factory = 'factory';

  final int quantity = 5000;

  final int price = 25000;

  final Date expirationDate = Date(year: 2023, month: 02, day: 05);

  bool favourite = false;

  int wantedQuantity = 0;

  @override
  Widget build(BuildContext context) {
    // MedicineModel medicin =
    //     ModalRoute.of(context)!.settings.arguments as MedicineModel;
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
        title: Text("product Name"),
        actions: [],
      ),
      backgroundColor: Color(0xFFECE6E6),
      body: Center(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomMedicine(upper: scientificName, lower: commercialName),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMedicine(
                      upper: 'Category',
                      lower: category,
                    ),
                    CustomMedicine(
                      upper: 'factory',
                      lower: factory,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMedicine(
                      upper: 'price',
                      lower: price.toString(),
                    ),
                    CustomMedicine(
                      upper: 'quantity',
                      lower: quantity.toString(),
                    )
                  ],
                ),
                CustomMedicine(
                    upper: 'ExpirationDate', lower: expirationDate.toString())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
