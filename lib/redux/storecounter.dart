import 'package:all_in_one/redux/reducercounter.dart';
import 'package:all_in_one/redux/statecounter.dart';
import 'package:redux/redux.dart';

import 'actioncounter.dart';

class CounterStore {
  final Store<AppState> _store;

  CounterStore() : _store = Store<AppState>(reducerCounter, initialState: AppState());

  // Getter for the store
  Store<AppState> get store => _store;

  // Function to dispatch actions
  void increment() {
    _store.dispatch(IncrementCounter(count: _store.state.count));
  }

  void decrement() {
    _store.dispatch(DecrementCounter(count: _store.state.count));
  }

  // Function to get the current state
  AppState get currentState => _store.state;
}