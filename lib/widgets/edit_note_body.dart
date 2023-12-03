
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 18,),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,),
          SizedBox(height: 50,),
          CustomTextField(hint: "Text"),
          SizedBox(height: 16,),
          CustomTextField(hint: "Content",maxlines: 5,),
        ],
      ),
    );
  }
}
