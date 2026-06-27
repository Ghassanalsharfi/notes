import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async
  {
    emit(AddNoteLoading());
  
  try {
  var noteBox = Hive.box<NoteModel>(kNotesBox);
  emit(AddNoteSuccess());
  await noteBox.add(note);
}  catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }

}
