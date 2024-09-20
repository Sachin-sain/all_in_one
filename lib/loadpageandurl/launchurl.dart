import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class LaunchUrl extends StatefulWidget {
  const LaunchUrl({super.key});

  @override
  State<LaunchUrl> createState() => _LaunchUrlState();
}

class _LaunchUrlState extends State<LaunchUrl> {
  final Uri _url = Uri.parse('https://flutter.dev');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Url launch"),
      ),
      body: GestureDetector(
        onTap: (){
          // _sendingMails();
          _launchUrl();
        },
        child: const Center(
          child: Text("click"),
        ),
      ),
    );
  }

  // _sendingMails() async {
  //   var url = Uri.parse("mailto:feedback@geeksforgeeks.org");
  //   ///tel:9776765434
  //   ///sms:966738292
  //   if (!await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

}
