import 'package:flutter/material.dart';

class BottomNavbarExample extends StatefulWidget {
  int? index;

  BottomNavbarExample({super.key,this.index});

  @override
  State<BottomNavbarExample> createState() => _BottomNavbarExampleState();
}

class _BottomNavbarExampleState extends State<BottomNavbarExample> {
  int? selectedIndex;
  @override
  void initState() {
    selectedIndex=widget.index??0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Column(
          children: [

          ],


        ),
        bottomNavigationBar:   BottomNavigationBar(
          backgroundColor: Colors.red,
          onTap: onPage,
          selectedFontSize:30,
          unselectedFontSize: 12,
          currentIndex:selectedIndex??0,
          items: const [
            BottomNavigationBarItem(backgroundColor: Colors.red, icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.mobile_screen_share_sharp), label: "About"),
            BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: "Services"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),

          ],)
    ) ;
  }
  onPage(int index){
    setState(() {
      selectedIndex=index;
    });
  }
}