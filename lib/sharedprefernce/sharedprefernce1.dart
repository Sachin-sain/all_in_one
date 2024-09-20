import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferce1 extends StatefulWidget {
  const SharedPreferce1({super.key});
  @override
  State<SharedPreferce1> createState() => _SharedPreferce1State();
}

class _SharedPreferce1State extends State<SharedPreferce1> {
  String?  Name='';
  TextEditingController textController=TextEditingController();
  @override
  void initState() {
    getValue();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharePreference'),
      ),
      body: Column(
        children: [
          TextField(
            controller:textController ,
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: ()async{
              final prefs=await SharedPreferences.getInstance();
              prefs.setString('savedValue', textController.text.toString());
            },
            child: const Text('Saved'),
          ),
          const SizedBox(height: 20,),
          Text('Name is $Name Saini'),
        ],
      ),
    );
  }
  void getValue() async{
    final prefs=await SharedPreferences.getInstance() ;
    final name= prefs.getString('savedValue');
    setState(() {
      Name=name.toString() ?? 'no name';
    });

  }
  @override
  void dispose() {
    textController.text;
  }
}