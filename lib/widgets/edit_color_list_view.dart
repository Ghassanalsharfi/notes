import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/widgets/color_list_view.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int CuurentIndex;

  @override
  void initState() {
    super.initState();
    CuurentIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                CuurentIndex = index;
                widget.note.color = kColors[index].toARGB32();
                setState(() {});
              },
              child: ColorItem(
                isActive: CuurentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
    ;
  }
}
