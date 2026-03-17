// test/bloc/counter_bloc_test.dart
// Unit tests for CounterBloc — no UI, no framework, just pure logic testing.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:bloc_counter_app/bloc/counter_event.dart';
import 'package:bloc_counter_app/bloc/counter_state.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc bloc;

    setUp(() {
      bloc = CounterBloc();
    });

    tearDown(() {
      bloc.close();
    });

    test('initial state has count 0', () {
      expect(bloc.state.count, equals(0));
    });

    blocTest<CounterBloc, CounterState>(
      'emits count 1 when IncrementPressed is added',
      build: () => CounterBloc(),
      act: (bloc) => bloc.add(IncrementPressed()),
      verify: (bloc) => expect(bloc.state.count, equals(1)),
    );

    blocTest<CounterBloc, CounterState>(
      'emits count 3 after three IncrementPressed events',
      build: () => CounterBloc(),
      act: (bloc) {
        bloc.add(IncrementPressed());
        bloc.add(IncrementPressed());
        bloc.add(IncrementPressed());
      },
      verify: (bloc) => expect(bloc.state.count, equals(3)),
    );

    blocTest<CounterBloc, CounterState>(
      'does not go below 0 when DecrementPressed at 0',
      build: () => CounterBloc(),
      act: (bloc) => bloc.add(DecrementPressed()),
      verify: (bloc) => expect(bloc.state.count, equals(0)),
    );

    blocTest<CounterBloc, CounterState>(
      'decrements correctly from a positive count',
      build: () => CounterBloc(),
      act: (bloc) {
        bloc.add(IncrementPressed());
        bloc.add(IncrementPressed());
        bloc.add(DecrementPressed());
      },
      verify: (bloc) => expect(bloc.state.count, equals(1)),
    );

    blocTest<CounterBloc, CounterState>(
      'resets count to 0',
      build: () => CounterBloc(),
      act: (bloc) {
        bloc.add(IncrementPressed());
        bloc.add(IncrementPressed());
        bloc.add(IncrementPressed());
        bloc.add(ResetPressed());
      },
      verify: (bloc) => expect(bloc.state.count, equals(0)),
    );

    // ─── CHALLENGE: Add a test for MultiplyPressed ───
    // blocTest<CounterBloc, CounterState>(
    //   'doubles the count when MultiplyPressed',
    //   build: () => CounterBloc(),
    //   act: (bloc) {
    //     bloc.add(IncrementPressed());
    //     bloc.add(IncrementPressed());
    //     bloc.add(IncrementPressed());   // count = 3
    //     bloc.add(MultiplyPressed());     // count = 6
    //   },
    //   verify: (bloc) => expect(bloc.state.count, equals(6)),
    // );
  });
}
