import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomeScreen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
     bool? right=true;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text('Login Page'),
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'please enter user email'
              ),
            ),
            GestureDetector(
              onTap: ()async{
                var prefs=await SharedPreferences.getInstance();
                prefs.setBool('isLogin',right );
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomeScreen()));

              },
                child: const Text('Login '))

          ],
        ),
      ),
    );
  }
}
