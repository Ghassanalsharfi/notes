import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/note_cubit/note_cubit.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';
import 'package:notes/widgets/note_view_body.dart';
class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 251, 255),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomShet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
