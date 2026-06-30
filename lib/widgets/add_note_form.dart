import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/widgets/color_list_view.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_filed.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
          SizedBox(height: 32),

          CustomTextFiled(
            hintText: 'Titel',
            onSaved: (value) {
              titel = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 32),
          ColorListView(),
          SizedBox(height: 50),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                titel: 'Add',
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: titel!,
                      subTitle: subTitle!,
                      date: DateFormat(
                        'yyyy-MM-dd',
                      ).format(DateTime.now()).toString(),
                      color: Colors.blue.toARGB32(),
                    );
                    context.read<AddNoteCubit>().addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
