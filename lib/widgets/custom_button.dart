import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.onTab,
    required this.titel,
    this.isLoading = false,
  });
  // ignore: non_constant_identifier_names
  final String titel;
  VoidCallback? onTab;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Center(
          child: isLoading
              ? CircularProgressIndicator(color: Colors.black)
              : Text(
                  titel,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
