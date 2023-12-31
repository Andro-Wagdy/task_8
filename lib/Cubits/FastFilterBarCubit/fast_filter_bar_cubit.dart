import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fast_filter_bar_state.dart';

class FastFilterBarCubit extends Cubit<FastFilterBarState> {
  FastFilterBarCubit() : super(FastFilterBarInitial());

  int selectedindex = 0;
  void changecolor(int index) {
    selectedindex = index;
    emit(FastFilterBarInitial());
  }
}
