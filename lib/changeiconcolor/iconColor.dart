import 'package:flutter/material.dart';

class ChangeIconColor extends StatefulWidget {
  const ChangeIconColor({super.key});

  @override
  State<ChangeIconColor> createState() => _ChangeIconColorState();
}

class _ChangeIconColorState extends State<ChangeIconColor> {
  bool isSelect=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onClick,
                child: Icon(Icons.heart_broken,color: isSelect?Colors.red:Colors.greenAccent,))
          ],
        ),
      ),
    );
  }
  onClick(){
    setState(() {
      isSelect=!isSelect;

    });
  }
}
