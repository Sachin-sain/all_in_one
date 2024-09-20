import 'package:flutter/material.dart';

class Bootom extends StatefulWidget {
  const Bootom({super.key});

  @override
  State<Bootom> createState() => _BootomState();
}

class _BootomState extends State<Bootom> {
  int selectedIndex=0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        onTap: onClick,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(backgroundColor: Colors.red,icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: 'abd'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'se'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_ethernet),label: 'seetig'),
        ],

      ),


    );
  }
  onClick(int index){
    setState(() {
      selectedIndex=index;
    });

  }
}
