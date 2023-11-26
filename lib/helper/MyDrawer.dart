import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/pages/addMedicinePage.dart';
import 'package:medicine_warehouse/pages/languagePage.dart';
import 'package:medicine_warehouse/pages/OrdersPage.dart';
import 'package:medicine_warehouse/pages/notfPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                margin: EdgeInsets.only(bottom: 0),
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
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            "assets/images/medicine_page-0001.jpg")), //put the logo app here
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ))),
            ListTile(
              leading: Icon(FontAwesomeIcons.plus),
              onTap: () {
                Navigator.pushNamed(context, AddMedicine.id);
              },
              title: Text(
                "Add Medicine",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.list),
              onTap: () {
                Navigator.pushNamed(context, OrdersPage.id);
              },
              title: Text(
                "Orders",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.language),
              onTap: () {
                Navigator.pushNamed(context, LanguagePage.id);
              },
              title: Text(
                "Language",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ],
        ));
  }
}
