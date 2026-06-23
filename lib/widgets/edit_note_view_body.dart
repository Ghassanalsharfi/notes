import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_filed.dart';

class EditNoteViewBody  extends StatelessWidget {
  const EditNoteViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [SizedBox(height: 50),
          CustomAppBar(titel: 'Edit Note',icon: Icons.check,),
          
            SizedBox(height: 32,),
        
            CustomTextFiled(hintText: 'Titel',),
            SizedBox(height: 16,),
            CustomTextFiled(hintText: 'Content', maxLines: 5,),
            SizedBox(height: 50,),
             SizedBox(height: 32,),
        ],
      ),
    );
  }
}