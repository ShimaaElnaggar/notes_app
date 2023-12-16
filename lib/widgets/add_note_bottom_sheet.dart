
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/widgets/add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => AddNoteCubit(AddNoteInitial()),
      child: BlocConsumer<AddNoteCubit,AddNoteStates>(
          listener: (context,  state) {
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
            if(state is AddNoteFailure){
              debugPrint("failed ${state.errorMessage}");
            }
          },
          builder: ( context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                    child: AddNoteForm(),
                ),
              ),
            );
          },
         ),
    );
  }
}

