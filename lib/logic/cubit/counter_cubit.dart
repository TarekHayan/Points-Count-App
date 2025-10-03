import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void incerementA(int points) {
    emit(
      EditeCount(
        numA: state.numA + points,
        numB: state.numB, // نقاط فريق B تبقى كما هي
      ),
    );
  }

  void incerementB(int points) {
    emit(EditeCount(numA: state.numA, numB: state.numB + points));
  }

  void reset() {
    emit(CounterInitial());
  }
}
