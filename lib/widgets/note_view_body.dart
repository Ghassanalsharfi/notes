import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(children: const [SizedBox(height: 50), CustomAppBar()]),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Note App'
            ,style: TextStyle(
              color: Colors.black,
            ),),
            subtitle: Text('Bulid yor Notes ' ,style: TextStyle(
              color: Colors.black,
            ),),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete,color: Colors.black,)),
          ),

          Text('May 21 , 2026' ,style: TextStyle(
              color: Colors.black,
            ),)
        ],
      ),
    );
  }
}
