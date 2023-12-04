
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          const CustomAppBar(title: 'Edit Note', icon: Icons.check,),
          const SizedBox(height: 50,),
          CustomTextField(
            hint: "Title",
            onSaved: (value ) {

            },
          ),
          const SizedBox(height: 16,),
          CustomTextField(
            hint: "Content",
            maxlines: 5,
            onSaved: (value) {  },),
        ],
      ),
    );
  }
}
