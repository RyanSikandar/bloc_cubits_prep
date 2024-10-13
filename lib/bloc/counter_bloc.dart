import 'package:bloc_practice/bloc/counter_event.dart';
import 'package:bloc_practice/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// here we are creating a CounterBloc class that extends the Bloc class from the flutter_bloc package.
// The CounterBloc class is a generic class that takes two types, the first one is the event type and the second one is the state type.
// The CounterBloc class has a constructor that initializes the state of the bloc with a CounterState object with a count of 0.
// The CounterBloc class has an on method that takes an event and a callback function as arguments.
// The on method is used to handle the CounterIncrementEvent event.
// The callback function increments the count of the state by 1 and emits the new state using the emit method.
// The CounterBloc class is used to manage the state of the counter in the application.
// The CounterBloc class listens to the CounterIncrementEvent event and updates the count of the state accordingly.

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });

    on<CounterDecrementEvent>(
        (event, emit) => emit(CounterState(count: state.count - 1)));
  }
  @override
  void onChange(Change<CounterState> change) {
    //always called when the state is changed.
    super.onChange(change);
    print(change.currentState.count.toString());
    print(change.nextState.count.toString());
  }

  @override //always called when the new state is emitted and the state is changed from the previous state. before the bloc is updated.
  void onTransition(Transition<CounterEvent, CounterState> transition) {
    super.onTransition(transition);
    print(transition.toString());
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    print(event.toString());
  }
}
