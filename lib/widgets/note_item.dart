
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffffcd7b),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:const Text(
                  " Flutter tips",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ) ,
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: Text(
                    " Build your career with tharwat samy",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ) ,
                trailing: IconButton(
                    onPressed: (){},
                   icon: const Icon(
                     FontAwesomeIcons.trash,
                     color: Colors.black,
                     size: 25,
                   ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(right: 24),
                 child: Text(
                  " May 21/2020",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.4),
                  ),
                           ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
