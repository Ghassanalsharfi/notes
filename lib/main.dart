import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/note_cubit/note_cubit.dart';
 import 'package:notes/model/note_model.dart';
import 'package:notes/simpel_bloc_observer.dart';
import 'package:notes/views/note_view.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(
    BlocProvider(
      create: (context) => NoteCubit()..fetchAllNote(),
      child: const NotesApp(),
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
    
      home: const NoteView(),
    );
  }
}
