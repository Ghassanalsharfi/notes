import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({ this.onTab, required this.Titel});
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
