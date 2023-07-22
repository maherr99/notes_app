import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/costant/costant.dart';

import '../../../modal/notes_modal.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNote() {
    try {
      var notesBox = Hive.box<NotesModal>(kNotesBox);

      emit(NotesSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
