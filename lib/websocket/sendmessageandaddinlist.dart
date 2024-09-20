import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SendMessage1 extends StatefulWidget {
  const SendMessage1({super.key});

  @override
  State<SendMessage1> createState() => _SendMessage1State();
}

class _SendMessage1State extends State<SendMessage1> {
  late WebSocketChannel channel; // WebSocket channel
  TextEditingController messageController = TextEditingController(); // Controller for input field
  List<String> messages = []; // List to store messages

  @override
  void initState() {
    super.initState();
    // Initialize the WebSocket channel
    channel = WebSocketChannel.connect(
      Uri.parse('wss://echo.websocket.org/'), // Use your WebSocket server URL
    );

    // Listen to incoming messages from the WebSocket
    channel.stream.listen((message) {
      setState(() {
        messages.add('Received: $message'); // Add received message to the list
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebSocket Chat'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    textColor: Colors.red,
                    title: Text(messages[index]),
                  );
                },
              ),
            ),
            TextFormField(
              controller: messageController,
              decoration: const InputDecoration(
                hintText: 'Enter message...',
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sendMessage,
        child: const Icon(Icons.send),
      ),
    );
  }

  // Function to send the message
  sendMessage() {
    if (messageController.text.isNotEmpty) {
      final data = messageController.text.toString();
      channel.sink.add(data); // Send message via WebSocket
      setState(() {
        messages.add('Sent: $data'); // Add sent message to the list
        messageController.clear(); // Clear the input field after sending
      });
    }
  }

  @override
  void dispose() {
    // Close the WebSocket channel when the widget is disposed
    channel.sink.close();
    super.dispose();
  }
}


