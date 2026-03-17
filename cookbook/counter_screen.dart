// lib/screens/counter_screen.dart
// The UI layer reads state and dispatches events.
// It contains ZERO business logic — all logic lives in the BLoC.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reset',
            onPressed: () {
              context.read<CounterBloc>().add(ResetPressed());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Current Count:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            // BlocBuilder only rebuilds when state changes
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            // Show last updated time
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Last updated: ${state.lastUpdated.hour}:${state.lastUpdated.minute.toString().padLeft(2, '0')}:${state.lastUpdated.second.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              context.read<CounterBloc>().add(IncrementPressed());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              context.read<CounterBloc>().add(DecrementPressed());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

// ─── CHALLENGE: Add a Multiply FAB ───
// Add a third FloatingActionButton that dispatches MultiplyPressed
