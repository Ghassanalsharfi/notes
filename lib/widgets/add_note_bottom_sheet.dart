

import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_filed.dart';

class AddNoteBottomShet extends StatelessWidget {
  const AddNoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteFoem(),
      ),
    );
  }
}

class AddNoteFoem extends StatefulWidget {
  const AddNoteFoem({
    super.key,
  });

  @override
  State<AddNoteFoem> createState() => _AddNoteFoemState();
}

class _AddNoteFoemState extends State<AddNoteFoem> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, subTitle;
  @override

  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          
          SizedBox(height: 32,),
      
          CustomTextFiled(hintText: 'Titel',onSaved:(value){
            titel = value;

          } ,),
          SizedBox(height: 16,),
          CustomTextFiled(hintText: 'Content', maxLines: 5, onSaved: (value) {
            subTitle = value;
          }),
          SizedBox(height: 50,),
          CustomButton(Titel: 'Add', onTab: (){
             if(formKey.currentState!.validate()){
              formKey.currentState!.save();
        
          }
          else{
            autovalidateMode = AutovalidateMode.always;
          }
          }),
          SizedBox(height: 32,),
        ],
      ),
    );
  }
}