import 'package:flutter/material.dart';
import 'package:medicine_warehouse/pages/homePage.dart';
import 'package:medicine_warehouse/pages/languagePage.dart';
import 'package:medicine_warehouse/pages/loginPage.dart';
import 'package:medicine_warehouse/pages/logoPage.dart';
import 'package:medicine_warehouse/pages/OrdersPage.dart';
import 'package:medicine_warehouse/pages/notfPage.dart';
import 'package:medicine_warehouse/pages/porductsPage.dart';
import 'package:medicine_warehouse/pages/productPage.dart';
import 'package:medicine_warehouse/pages/registerPage.dart';
import 'package:medicine_warehouse/pages/searchPage.dart';
import 'package:medicine_warehouse/pages/addMedicinePage.dart';
import 'package:medicine_warehouse/providers/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MedicineWarehouse());
}

class MedicineWarehouse extends StatelessWidget {
  const MedicineWarehouse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          RegisterPage.id: (context) => RegisterPage(),
          AddMedicine.id: (context) => AddMedicine(),
          LogInPage.id: (context) => LogInPage(),
          LogoPage.id: (context) => LogoPage(),
          ProductsPage.id: (context) => ProductsPage(),
          HomePage.id: (context) => HomePage(),
          SearchPage.id: (context) => SearchPage(),
          ProductPage.id: (context) => ProductPage(),
          OrdersPage.id: (context) => OrdersPage(),
          NotficationsPage.id: (context) => NotficationsPage(),
          LanguagePage.id: (context) => LanguagePage(),
        },
        initialRoute: LogoPage.id //show your working screen here
        );
  }
}
