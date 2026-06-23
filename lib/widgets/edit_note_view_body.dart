import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class EditNoteViewBody  extends StatelessWidget {
  const EditNoteViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [SizedBox(height: 50),
          CustomAppBar(titel: 'Edit Note',icon: Icons.check,),
        ],
      ),
    );
  }
}