
import 'package:flutter/material.dart';
import 'package:notes/views/edit_note_view%20%20.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push( context,MaterialPageRoute(builder: (context) => const EditNoteView()) );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 24,top: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Note App',
                style: TextStyle(color: Colors.black,fontSize: 26),
              ),
              subtitle:   Padding(
                padding: const EdgeInsets.only(top: 16.0,bottom: 16),
                child: Text(
                  'Bulid yor Notes with Ghassan Alsharafi App  ',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5)
                    ,fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black),
              ),
            ),
      
              Padding(
                padding: const EdgeInsets.only
                (right: 24.0),
                child: Text('May 21 , 2026', style: TextStyle(
                  fontSize: 16,
                    color: Colors.black.withValues(alpha: 0.4)
                  )),
              ),
          ],
        ),
      ),
    );
  }
}
