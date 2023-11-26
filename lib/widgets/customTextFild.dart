import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  CustomTextFild(
      {this.hintText,
      this.icon,
      required this.obsecure,
      this.keyboardType,
      required this.onChanged});
  String? hintText;
  IconButton? icon;
  bool obsecure;
  void Function(dynamic) onChanged;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obsecure,
        cursorRadius: Radius.circular(25),
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color.fromARGB(172, 58, 176, 184),
            fontSize: 18,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF3AAFB8),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
