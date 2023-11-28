import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/pages/homePage.dart';

import '../constants.dart';
import '../widgets/customButton.dart';
import '../widgets/customTextFild.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String id = "RegisterPage";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late String phoneNumber;
  late String password;
  late String username;
  bool isobsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE6E6),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
                child: Container(
              child: Image.asset(
                'assets/images/medicine_page-0001.jpg',
              ),
            )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    children: [
                      CustomTextFild(
                        onChanged: (value) {
                          username = value;
                        },
                        obsecure: false,
                        hintText: 'User Name',
                      ),
                      CustomTextFild(
                        onChanged: (value) {
                          phoneNumber = value;
                        },
                        obsecure: false,
                        hintText: 'Phone Number',
                      ),
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
                    ],
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, HomePage.id);
                    },
                    text: 'Register',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'already have an account?',
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'LogIn',
                          style: TextStyle(
                            color: kcolor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
