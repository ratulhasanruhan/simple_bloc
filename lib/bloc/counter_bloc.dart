import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/bloc/counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)){
    on<IncrementEvent>((event, emit) {
      emit(CounterState(count: state.count + event.value));
    });
    on<DecrementEvent>((event, emit) {
      emit(CounterState(count: state.count - event.value));
    });
  }
}