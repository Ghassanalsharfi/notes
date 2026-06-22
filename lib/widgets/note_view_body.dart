import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [SizedBox(height: 50), CustomAppBar(), NoteItem()],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            subtitle:   Text(
              'Bulid yor Notes ',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.4)
                ,fontSize: 20),
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
                  color: Colors.black.withValues(alpha: 0.4)
                )),
            ),
        ],
      ),
    );
  }
}
