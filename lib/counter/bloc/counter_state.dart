part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  
}

class CounterInitial extends CounterState {
  CounterInitial({ this.num });
  final int num;
}
