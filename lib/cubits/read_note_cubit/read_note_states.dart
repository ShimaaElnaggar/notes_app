
import 'package:notes_app/models/note_model.dart';

abstract class ReadNoteStates{}
  class ReadNoteInitial extends ReadNoteStates{}
  class ReadNoteLoading extends ReadNoteStates{}
  class ReadNoteSuccess extends ReadNoteStates{
  final List<NoteModel> notes;

  ReadNoteSuccess(this.notes);
}
  class ReadNoteFailure extends ReadNoteStates{
  final String errorMessage;

  ReadNoteFailure(this.errorMessage);
  }
