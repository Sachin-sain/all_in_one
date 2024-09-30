import 'package:all_in_one/sharedprefernceExample/Splash.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageKhde extends StatefulWidget {
  const LoginPageKhde({super.key});

  @override
  State<LoginPageKhde> createState() => _LoginPageKhdeState();
}

class _LoginPageKhdeState extends State<LoginPageKhde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(

          ),
           const SizedBox(height: 20,),
          TextFormField(),
          SizedBox(height: 20,),
          Expanded(child:
          ElevatedButton(onPressed: () async{
            ///means login suceefully
            final prefs=await SharedPreferences.getInstance();
            prefs.setBool(SplashScreenState.login, true);


          }, child: const Text("Login"),))
        ],
      ),
    );
  }
}
