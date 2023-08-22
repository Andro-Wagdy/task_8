part of 'text_field_cubit.dart';

@immutable
sealed class TextFieldState {}

final class TextFieldInitial extends TextFieldState {}

final class changeText extends TextFieldState {}

