
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesAppBody extends StatefulWidget {
  const NotesAppBody({super.key});

  @override
  State<NotesAppBody> createState() => _NotesAppBodyState();
}

class _NotesAppBodyState extends State<NotesAppBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).fetchNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          Expanded(
              child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
