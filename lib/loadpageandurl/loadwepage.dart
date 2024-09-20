import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class LoadWebPage extends StatefulWidget {
  const LoadWebPage({super.key});

  @override
  State<LoadWebPage> createState() => _LoadWebPageState();
}

class _LoadWebPageState extends State<LoadWebPage> {
WebViewController  controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse('https://www.youtube.com/'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Webpage"),
      ),
      body:Center(
        child: WebViewWidget(
          controller:controller,
        ),
      )
    );
  }
}
