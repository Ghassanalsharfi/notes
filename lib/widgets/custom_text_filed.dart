import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

// ignore: must_be_immutable
class CustomTextFiled extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CustomTextFiled({this.hintText, this.obscureText = false, this.onChanged});
  String? hintText;
  bool? obscureText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
