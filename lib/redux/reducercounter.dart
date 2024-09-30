import 'package:all_in_one/redux/statecounter.dart';

import 'actioncounter.dart';

AppState reducerCounter(AppState state, dynamic action) {
  if (action is IncrementCounter) {
    return AppState(count: state.count + 1); // Increment count
  }
  if (action is DecrementCounter) {
    return AppState(count: state.count - 1); // Decrement count
  }
  return state; // Return unchanged state for unknown actions
}
