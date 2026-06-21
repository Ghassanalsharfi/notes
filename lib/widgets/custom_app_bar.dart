import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
 