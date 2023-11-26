import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicine_warehouse/pages/loginPage.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});
  static String id = "LogoPage";

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, LogInPage.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(
                      'assets/images/medicine_page-0001.jpg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Pharmacy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'Pacifico',
                )),
          ],
        ),
      ),
    );
  }
}
