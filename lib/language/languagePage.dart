import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('welcome'.tr), // Translated welcome message
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr, style: const TextStyle(fontSize: 24)), // Translated hello message
            const SizedBox(height: 20),
            Text('language'.tr, style: const TextStyle(fontSize: 20)), // Translated language label
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Switch to English
                var locale = const Locale('en', 'US');
                Get.updateLocale(locale);
              },
              child: const Text('Switch to English'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Switch to Hindi
                var locale = const Locale('hi', 'IN');
                Get.updateLocale(locale);
              },
              child: const Text('स्विच करें हिंदी में'),
            ),
          ],
        ),
      ),
    );
  }
}
