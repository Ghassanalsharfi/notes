import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_filed.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),

          CustomTextFiled(
            hintText: 'Titel',
            onSaved: (value) {
              titel = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextFiled(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          ColorListView(),
          SizedBox(height: 50),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                Titel: 'Add',
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: titel!,
                      subTitle: subTitle!,
                      Date: DateFormat(
                        'yyyy-MM-dd',
                      ).format(DateTime.now()).toString(),
                      color: Colors.blue.toARGB32(),
                    );
                    context.read<AddNoteCubit>().addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(backgroundColor: color, radius: 28),
          )
        : CircleAvatar(backgroundColor: color, radius: 30);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int CuurentIndex = 0;
  List<Color> colors = [
    Color(0xff606c38),
    Color(0xff283618),
    Color(0xfffefae0),
    Color(0xffdda15e),
    Color(0xffbc6c25),
    Color(0xff6f1d1b),
    Color(0xfff1faee),
    Color(0xffa8dadc),
    Color(0xff457b9d),
    Color(0xffc9ada7),
  ];

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
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                isActive: CuurentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
