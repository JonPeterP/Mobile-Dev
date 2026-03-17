// lib/bloc/counter_bloc.dart
// The BLoC maps Events → States.
// Each event handler receives the current state and emits a new one.

import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(lastUpdated: DateTime.now())) {

    on<IncrementPressed>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });

    on<DecrementPressed>((event, emit) {
      // Prevent negative counts
      if (state.count > 0) {
        emit(state.copyWith(count: state.count - 1));
      }
    });

    on<ResetPressed>((event, emit) {
      emit(state.copyWith(count: 0));
    });

    // ─── CHALLENGE: Handle MultiplyPressed ───
    // on<MultiplyPressed>((event, emit) {
    //   emit(state.copyWith(count: state.count * 2));
    // });
  }
}
