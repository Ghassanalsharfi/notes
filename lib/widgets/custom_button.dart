import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

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
        width:MediaQuery.of(context).size.width ,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
       
        child: Center(child: Text(Titel,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
      ),
    );
  }
}
