import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/note_cubit.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/widgets/custom_note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
       List<NoteModel> notes = context.read<NoteCubit>().notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
