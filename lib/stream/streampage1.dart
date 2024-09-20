import 'dart:async';
import 'package:flutter/material.dart';
class StreamPage1 extends StatefulWidget {
  const StreamPage1({super.key});
  @override
  State<StreamPage1> createState() => _StreamPage1State();
}

class _StreamPage1State extends State<StreamPage1> {
  // int counter=0;
  TextEditingController meassgeController=TextEditingController();
  StreamController dataController=StreamController();///controller for single broadcast stream
  // StreamController dataController=StreamController.broadcast();///controller for multiple broadcast stream
  StreamController msgController=StreamController();///controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stream Example"),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ///subscriber (single broadcast stream)
            StreamBuilder(
              stream: dataController.stream,
              builder: (BuildContext context,  snapshot) {
                return Center(
                  child: Text(snapshot.data?.toString() ?? '0' ),
                );
              },
            ),
            ///for multiple multiple broadcast stream we have create the again stream builder
            // StreamBuilder(
            //   stream: dataController.stream,
            //   builder: (BuildContext context,  snapshot) {
            //     return Center(
            //       child: Text(snapshot.data?.toString() ?? '0' ),
            //     );
            //   },
            // ),

            const SizedBox(height: 10,),


            StreamBuilder(
              stream: msgController.stream,
              builder: (BuildContext context,  snapshot) {
                return Center(
                  child: Text(snapshot.data?.toString() ?? 'no data' ),
                );
              },
            ),

            TextFormField(
              controller: meassgeController,
            ),

            const SizedBox(height: 30,),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  dataController.sink.add(10);///input
                  // dataController.sink.add(counter++);///input
                  msgController.sink.add(meassgeController.text);
                },
                child: const Text("Add"),
              ),
            )

          ],
        )
    );
  }
}
