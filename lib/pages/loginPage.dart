import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/pages/homePage.dart';
import 'package:medicine_warehouse/pages/registerPage.dart';

import '../constants.dart';
import '../widgets/customButton.dart';
import '../widgets/customTextFild.dart';

class LogInPage extends StatefulWidget {
  static String id = "LogInPage";

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late String phoneNumber;
  late String password;
  String? test;
  bool isobsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE6E6),
      body: Row(
        children: [
          Expanded(
              child: Container(
            child: Image.asset(
              'assets/images/medicine_page-0001.jpg',
            ),
          )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 56, horizontal: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 75,
                  ),
                  /* Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                          'assets/images/medicine_page-0001.jpg',
                        ),
                      ),
                    ],
                  ),*/
                  const SizedBox(height: 50),
                  const Text(
                    'LogIn',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  CustomTextFild(
                    onChanged: (value) {
                      phoneNumber = value;
                    },
                    keyboardType: TextInputType.phone,
                    obsecure: false,
                    hintText: 'Phone Number',
                  ),
                  // const SizedBox(height: 12),
                  CustomTextFild(
                    onChanged: (value) {
                      password = value;
                    },
                    obsecure: isobsecure,
                    icon: IconButton(
                        onPressed: () {
                          if (isobsecure == false)
                            isobsecure = true;
                          else
                            isobsecure = false;
                          setState(() {});
                        },
                        color: kcolor,
                        icon: Icon(isobsecure == false
                            ? FontAwesomeIcons.eye
                            : FontAwesomeIcons.eyeSlash)),
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    text: 'LogIn',
                  ),
                  // const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'don\'t have an account?',
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Color(0xFF3AAFB8),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Expanded(child: Container())
        ],
      ),
    );
  }
}
