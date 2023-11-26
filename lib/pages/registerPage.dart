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
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      AssetImage('assets/images/medicine_page-0001.jpg'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Register',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              onChanged: (value) {
                username = value;
              },
              obsecure: false,
              hintText: 'User Name',
            ),
            const SizedBox(height: 12),
            CustomTextFild(
              onChanged: (value) {
                phoneNumber = value;
              },
              obsecure: false,
              hintText: 'Phone Number',
            ),
            const SizedBox(height: 12),
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
                Navigator.pushReplacementNamed(context, HomePage.id);
              },
              text: 'Register',
            ),
            const SizedBox(height: 12),
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
    );
  }
}
