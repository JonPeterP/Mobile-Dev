// lib/bloc/counter_event.dart
// Events represent user actions or system triggers.
// They are the INPUTS to a BLoC.

abstract class CounterEvent {}

/// User pressed the "+" button
class IncrementPressed extends CounterEvent {}

/// User pressed the "-" button
class DecrementPressed extends CounterEvent {}

/// User pressed the reset button
class ResetPressed extends CounterEvent {}

// ─── CHALLENGE: Add a MultiplyPressed event ───
// class MultiplyPressed extends CounterEvent {}
