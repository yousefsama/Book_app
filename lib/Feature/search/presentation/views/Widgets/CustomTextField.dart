import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.label,
      required this.isPassword});
  final String hintText;
  final String label;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      autofocus: true,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          gapPadding: 50,
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
