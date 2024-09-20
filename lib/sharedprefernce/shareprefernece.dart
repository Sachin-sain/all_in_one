
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefercePage extends StatefulWidget {
  const SharePrefercePage({super.key});

  @override
  State<SharePrefercePage> createState() => _SharePrefercePageState();
}

class _SharePrefercePageState extends State<SharePrefercePage> {
  // final box=GetStorage();
  int a=0;
  String? data='';
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data.toString()),
            Expanded(
              child: GestureDetector(
                onTap: ()async{
                  final prefs=await SharedPreferences.getInstance();
                   prefs.setString('value',a.toString());
                  final Value= prefs.getString('value');
                  print(Value);
                  // box.write('value', a.toString());
                  // getData();
                },
                child: Text('Get'),
              ),
            )
          ],
        ),
      ),
    );
  }
  getData()async{
    final pref=await SharedPreferences.getInstance();
    final text=pref.getString('value');
    // final text=box.read('value');
    print('Text$text');
    setState(() {
      data=text.toString()?? '';
    });

  }
}
