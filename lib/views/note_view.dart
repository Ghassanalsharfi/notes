import 'package:flutter/material.dart';
import 'package:notes/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
       backgroundColor: Color.fromARGB(255, 0, 251, 255),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}
