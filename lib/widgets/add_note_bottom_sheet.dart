

import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_filed.dart';

class AddNoteBottomShet extends StatelessWidget {
  const AddNoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          
          SizedBox(height: 32,),
      
          CustomTextFiled(hintText: 'Titel',),
          SizedBox(height: 16,),
          CustomTextFiled(hintText: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}