import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageKhde extends StatefulWidget {
  const HomePageKhde({super.key});

  @override
  State<HomePageKhde> createState() => _HomePageKhdeState();
}

class _HomePageKhdeState extends State<HomePageKhde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.home),),
    );
  }
}
