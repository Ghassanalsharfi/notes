import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/note_cubit.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/widgets/color_list_view.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_filed.dart';
import 'package:notes/widgets/edit_color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, contant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            titel: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = contant ?? widget.note.title;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNote();
              Navigator.pop(context);
            },
          ),

          SizedBox(height: 32),

          CustomTextFiled(
            onChanged: (value) => title = value,
            hintText: widget.note.title,
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            onChanged: (value) => contant = value,
            hintText: widget.note.subTitle,
            maxLines: 5,
          ),
          SizedBox(height: 50),
          EditColorListView(note: widget.note),

          SizedBox(height: 32),
        ],
      ),
    );
  }
}
