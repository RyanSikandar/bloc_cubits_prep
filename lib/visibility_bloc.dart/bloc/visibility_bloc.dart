import 'package:bloc_practice/bloc/counter_event.dart';
import 'package:bloc_practice/bloc/counter_state.dart';
import 'package:bloc_practice/visibility_bloc.dart/bloc/visibility_event.dart';
import 'package:bloc_practice/visibility_bloc.dart/bloc/visibility_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// here we are creating a CounterBloc class that extends the Bloc class from the flutter_bloc package.
// The CounterBloc class is a generic class that takes two types, the first one is the event type and the second one is the state type.
// The CounterBloc class has a constructor that initializes the state of the bloc with a CounterState object with a count of 0.
// The CounterBloc class has an on method that takes an event and a callback function as arguments.
// The on method is used to handle the CounterIncrementEvent event.
// The callback function increments the count of the state by 1 and emits the new state using the emit method.
// The CounterBloc class is used to manage the state of the counter in the application.
// The CounterBloc class listens to the CounterIncrementEvent event and updates the count of the state accordingly.

class VisibilityBloc extends Bloc<VisibilityEvent, VisibilityState> {
  VisibilityBloc() : super(VisibilityState(show: true)) {
    on<VisibilityShowEvent>((event, emit) {
      emit(VisibilityState(show: true));
    });

    on<VisibilityHideEvent>(
        (event, emit) => emit(VisibilityState(show: false)));
  }
}
