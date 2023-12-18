
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class ReadNoteCubit extends Cubit<ReadNoteStates>{
  ReadNoteCubit(super.initialState);

  fetchNotes( NoteModel notes){

    try{
      var notesBox = Hive.box<NoteModel>(kNotesBox);
       List<NoteModel> notes = notesBox.values.toList();
      emit(ReadNoteSuccess(notes));
    }catch(e){
      emit(ReadNoteFailure(e.toString()));
    }
  }
  }
