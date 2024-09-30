import 'package:flutter/material.dart';

import 'package:share_plus/share_plus.dart';
// import 'package:flutter_share/flutter_share.dart';


class ShareApp extends StatelessWidget {
  const ShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: shareData,
                child: const Text('Share text and link'),
              ),

            ],
          ),
        ),
      );
  }
  // Future<void> share() async {
  //   await FlutterShare.share(
  //       title: 'Example share',
  //       text: 'Example share text',
  //       linkUrl: 'https://flutter.dev/',
  //       chooserTitle: 'Example Chooser Title'
  //   );
  // }
  shareData()async{
    String data="I am Sachin";
    await Share.share(data);

  }

}