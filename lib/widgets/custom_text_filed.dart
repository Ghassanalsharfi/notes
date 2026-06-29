import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({
    this.hintText,
    this.obscureText = false,
    this.onChanged,
    this.onSaved,
    this.maxLines = 1,
  });
  final String? hintText;
  final int? maxLines;
  final bool? obscureText;
  final Function(String)? onChanged;
  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
        return null;
       },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
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
