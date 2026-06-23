import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key,required this.titel, required this.icon});
  final String? titel;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:   [
        Text(
          titel ?? '',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
