import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/cubits/note_cubit/note_cubit.dart';
import 'package:notes/widgets/add_note_form.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_filed.dart';
class AddNoteBottomShet extends StatelessWidget {
  const AddNoteBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
        BlocProvider.value(
          value: context.read<NoteCubit>(), // إعادة استخدام نفس الـ NoteCubit
        ),
      ],
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Error: ${state.errorMessage}');
          }
          if (state is AddNoteSuccess) {
            context.read<NoteCubit>().fetchAllNote(); // تحديث القائمة
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
