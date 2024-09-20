import 'dart:async';
import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  StreamController chikaController = StreamController();
  StreamController nakaController = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextFormField(
                controller: emailController,
              ),
            ),
            const SizedBox(height: 20),
            StreamBuilder(
              stream: chikaController.stream,
              builder: (BuildContext context, snapshot) {
                if (!snapshot.hasData) {
                  return const Text("No data");
                } else {
                  return Text(snapshot.data.toString());
                }
              },
            ),
            const SizedBox(height: 20),
            StreamBuilder(
              stream: nakaController.stream,
              builder: (BuildContext context, snapshot) {
                if (!snapshot.hasData) {
                  return const Text("No data");
                } else {
                  return Text(snapshot.data.toString());
                }
              },
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                chikaController.sink.add(emailController.text);
                nakaController.sink.add(10); // Example data
              },
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  'Send Data',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Don't forget to close the stream controllers to avoid memory leaks.
    chikaController.close();
    nakaController.close();
    super.dispose();
  }
}
