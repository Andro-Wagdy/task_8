import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;
  void increament() {
    counter++;
    emit(CounterInitial());
  }

  void decreament() {
    counter--;
    emit(CounterInitial());
  }
}
