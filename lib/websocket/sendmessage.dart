import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({super.key});

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  late WebSocketChannel channel;
  @override
  void initState() {
    channel = WebSocketChannel.connect(
      Uri.parse('wss://echo.websocket.org'),
    );
    super.initState();
  }
  TextEditingController messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            TextFormField(
              controller: messageController,
              decoration: const InputDecoration(
                hintText: 'Send Message',
              ),
            ),
            const SizedBox(height: 20,),
            StreamBuilder(
              stream: channel.stream,
              builder: (BuildContext context, snapshot) {
                return Text(snapshot.data);
              },
            ),

          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: sendMessage,
        child:  const Icon(Icons.send),
      ),
    );
  }
  sendMessage(){
    if(messageController.text.isNotEmpty) {
      channel.sink.add(messageController.text.toString());
      print(messageController.text);
      messageController.clear();
    }

  }
  @override
  void dispose() {
    channel .sink.close();
    super.dispose();
  }
}
