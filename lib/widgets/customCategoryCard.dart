import 'package:flutter/material.dart';
import 'package:medicine_warehouse/pages/porductsPage.dart';

class CustomCategoryCard extends StatelessWidget {
  //CustomCategoryCard({required this.category});
  String? category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductsPage.id, arguments: category);
      },
      child: Container(
        height: 95,
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
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/mm.jpg",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "category name",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
