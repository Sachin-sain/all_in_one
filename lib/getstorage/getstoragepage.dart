import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageExample extends StatefulWidget {
  const GetStorageExample({super.key});

  @override
  State<GetStorageExample> createState() => _GetStorageExampleState();
}

class _GetStorageExampleState extends State<GetStorageExample> {
  int count=0;

  final box=GetStorage();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text("Get Storage"),
      ),
      body: Column(
        children: [
          Center(
            child:Text(count.toString(),style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent,fontSize: 30),),
          ),
          const SizedBox(height: 20,),
          Center(
            child: Text('${box.read('Count') ?? 0 }  ',style: const TextStyle(color: Colors.red),),///get String
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
          box.write('Count', count);///set string
        });
      },
        child: const Text("Click"),

      ),
    );
  }
}