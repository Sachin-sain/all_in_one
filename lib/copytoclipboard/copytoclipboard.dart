import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopytoClipBoard extends StatefulWidget {
  const CopytoClipBoard({super.key});

  @override
  State<CopytoClipBoard> createState() => _CopytoClipBoardState();
}

class _CopytoClipBoardState extends State<CopytoClipBoard> {
  TextEditingController dataController=TextEditingController();
  String pastedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextFormField(
              controller: dataController,
            ),
            // Copy to clipboard
            GestureDetector(
              onTap: () {
                copyData(context);
              },
              child: const Text('Copy Data'),
            ),
            const SizedBox(height: 20),

            // Paste from clipboard
            GestureDetector(
              onTap: () {
                pasteFromClipboard();
              },
              child: const Text('Paste Data'),
            ),
            const SizedBox(height: 20),

            // Display the pasted text
            Text(pastedText),
          ],
        ),
      ),
    );
  }

  /// Copy to Clipboard
  Future<void> copyData(BuildContext context) async {
    if(dataController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No Data Copied')),
      );
    }else{
      await Clipboard.setData( ClipboardData(text: dataController.text));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copied to clipboard')),
      );
    }

  }

  /// Paste from Clipboard
  Future<void> pasteFromClipboard() async {
    ClipboardData? clipboardData = await Clipboard.getData(dataController.text);
    if (clipboardData != null) {
      setState(() {
        pastedText = clipboardData.text ?? '';
      });
    }
  }
}
