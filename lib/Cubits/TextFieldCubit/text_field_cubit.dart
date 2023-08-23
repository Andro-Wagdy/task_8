import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'text_field_state.dart';

class TextFieldCubit extends Cubit<TextFieldState> {
  TextFieldCubit() : super(TextFieldInitial());
  bool isShown = false;
  bool isobscure = true;

  void showhidepass() {
    isShown = !isShown;
    isobscure = !isobscure;
    emit(TextFieldInitial());
  }
}
