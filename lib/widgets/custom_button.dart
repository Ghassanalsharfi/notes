import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   // ignore: non_constant_identifier_names, use_key_in_widget_constructors
   CustomButton({ this.onTab, required this.Titel});
  // ignore: non_constant_identifier_names
  final String Titel;
  VoidCallback ? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(child: Text(Titel)),
      ),
    );
  }
}
