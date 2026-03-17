// lib/bloc/counter_state.dart
// States represent the data your UI needs to render.
// They are the OUTPUTS of a BLoC.
// States should be immutable — use copyWith to create new instances.

class CounterState {
  final int count;
  final DateTime lastUpdated;

  const CounterState({
    this.count = 0,
    required this.lastUpdated,
  });

  /// Creates a new state with optional overrides.
  /// This pattern ensures immutability — we never mutate existing state.
  CounterState copyWith({int? count}) {
    return CounterState(
      count: count ?? this.count,
      lastUpdated: DateTime.now(),
    );
  }

  @override
  String toString() => 'CounterState(count: $count)';
}

// ─── CHALLENGE: Add a List<String> history field ───
// Track operations like "Incremented to 5", "Reset to 0"
