import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'text_field_state.dart';

class TextFieldCubit extends Cubit<TextFieldState> {
  TextFieldCubit() : super(TextFieldInitial());
  bool isObscure = true;
  Widget? ChangeIcon() {
    emit(changeText());
    return isObscure
        ? const Icon(Icons.visibility_off)
        : const Icon(Icons.visibility);
  }
}
