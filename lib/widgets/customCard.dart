import 'package:flutter/material.dart';
import 'package:medicine_warehouse/models/medicine_model.dart';
import 'package:medicine_warehouse/pages/porductsPage.dart';
import 'package:medicine_warehouse/pages/productPage.dart';

class CustomCard extends StatelessWidget {
  // CostumCard({required this.medicin});
  MedicineModel? medicin;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductPage.id, arguments: medicin);
      },
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                blurRadius: 40,
                spreadRadius: 0,
                offset: Offset(10, 10)),
          ]),
          child: Card(
            elevation: 10,
            color: Color(0xFF3AAFB8),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      'medecine'
                      //${product!.ProductName.substring(0, 15)}
                      '...',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      'factory'
                      //${product!.ProductName.substring(0, 15)}
                      '...',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r"$ " "22"
                            //${product!.price}"
                            ,
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
