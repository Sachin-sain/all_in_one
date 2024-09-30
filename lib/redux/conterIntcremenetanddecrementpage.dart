import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'actioncounter.dart';
import 'statecounter.dart';
import 'reducercounter.dart';

class CounterScreen extends StatelessWidget {
  final Store<AppState> store;

  CounterScreen({required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: StoreConnector<AppState, int>(
          converter: (store) => store.state.count,
          builder: (context, count) {
            return Text(
              'Counter: $count',
              style: TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              store.dispatch(IncrementCounter(count: store.state.count));
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          const SizedBox(width: 10), // Add spacing between buttons
          FloatingActionButton(
            onPressed: () {
              store.dispatch(DecrementCounter(count: store.state.count));
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
