import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const login='Login';
  @override
  void initState() {
    whereToGo(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void whereToGo(BuildContext context)async {
    final pref=await SharedPreferences.getInstance();
    var isLogin= pref.getBool(login);

    if(isLogin!=null){
      if(isLogin){
        Timer(const Duration(seconds: 4),(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePageKhde()));
        });

      }
    }else {
    Timer(const Duration(seconds: 4),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPageKhde()));
    });
    }

  }
}
