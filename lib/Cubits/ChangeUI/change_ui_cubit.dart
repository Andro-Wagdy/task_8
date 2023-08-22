import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_ui_state.dart';

class ChangeUiCubit extends Cubit<ChangeUiState> {
  ChangeUiCubit() : super(ChangeUiInitial());
  void showtext() {
    emit(ShowText());
  }

  void showCircle() {
    emit(ShowCircleImage());
  }

  void showSquare() {
    emit(ShowSquare());
  }

  void reset() {
    emit(ChnageUiInitial());
  }
}
