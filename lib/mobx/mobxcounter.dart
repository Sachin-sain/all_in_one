// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'mobxcontroller.dart';
//
// class MobxCounter extends StatelessWidget {
//   final CounterStore1 counterStore1 = CounterStore1();
//
//    MobxCounter({super.key}); // Create an instance of CounterStore
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MobX Counter App',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Counter App with MobX')),
//         body: Center(
//           child: Observer(
//             builder: (_) => Text(
//               'Counter: ${counterStore1.count}', // Display the counter
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//         ),
//         floatingActionButton: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             FloatingActionButton(
//               onPressed: counterStore1.increment, // Increment button
//               tooltip: 'Increment',
//               child: Icon(Icons.add),
//             ),
//             SizedBox(width: 10), // Add spacing between buttons
//             FloatingActionButton(
//               onPressed: counterStore1.decrement, // Decrement button
//               tooltip: 'Decrement',
//               child: Icon(Icons.remove),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }