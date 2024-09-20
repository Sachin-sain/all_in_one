import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';


class LiveData extends StatefulWidget {
  const LiveData({super.key});

  @override
  State<LiveData> createState() => _LiveDataState();
}

class _LiveDataState extends State<LiveData> {
  String? value='';
  late final WebSocketChannel channel;

  @override
  void initState() {
    connectWebSocketFunction();
    super.initState();
  }
  final url=Uri.parse("wss://fstream.binance.com/stream?streams=bnbusdt@aggTrade/btcusdt@markPrice");


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('The Value is'),
          Text(value.toString())
        ],
      )),
    );
  }
  connectWebSocketFunction()async{
    channel=WebSocketChannel.connect(url);
    channel.stream.listen((message){
      print(message);
      final data=jsonDecode(message);
      setState(() {
        value=data['data']['E'].toString();
      });
      if (kDebugMode) {
        print('Value$value');
      }
    });

  }
  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
