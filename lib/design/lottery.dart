import 'dart:math';
import 'package:flutter/material.dart';
class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});
  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int number=0;
  Random random=Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text("Lottery App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number>10 ?"number is greater 10":number.toString()),
          SizedBox(height: 10,),
          Container(
            color: Colors.greenAccent,
            child: Text(number==4?"You are won the Lottery":"Betterr luck next time"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          number=random.nextInt(10);
          setState(() {
          });
        },
        child: number==4 ?const SizedBox():const Icon(Icons.refresh,),
      ),
    );
  }
}
