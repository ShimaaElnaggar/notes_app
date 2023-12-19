import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates>{
  AddNoteCubit(super.initialState);
 Color color = const Color(0xffCDB4DB);
  addNote(NoteModel note)async{
  note.color = color.value;
    emit(AddNoteLoading());
    try{
   var notesBox = Hive.box<NoteModel>(kNotesBox);

   await notesBox.add(note);
   emit(AddNoteSuccess());
    }catch(e){
      emit(AddNoteFailure(e.toString()));
    }
  }
}