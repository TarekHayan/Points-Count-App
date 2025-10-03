part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int numA;
  final int numB;

  const CounterState({required this.numA, required this.numB});
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(numA: 0, numB: 0);
}

final class EditeCount extends CounterState {
  const EditeCount({required super.numA, required super.numB});
}
