
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
   String ? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ReadNoteCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,),
          const SizedBox(height: 50,),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value){
              title = value;
            },
          ),
          const SizedBox(height: 16,),
          CustomTextField(
            hint: widget.note.subTitle,
            maxlines: 5,
            onChanged: (value){
              content = value;
            },
            ),
          const SizedBox(height: 16,),
           EditNoteColorsList(note: widget.note,),
        ],
      ),
    );
  }
}
