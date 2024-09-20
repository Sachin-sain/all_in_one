import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});
  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync:this, duration: const Duration(seconds: 4) );
    animation=Tween(begin: 200.0, end: 10.0).animate(animationController);
    animationController.addStatusListener((value) {
      if (kDebugMode) {
        print(animation.value.toString());
      }
      setState(() {

      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text("Tween Animation"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: animation.value,
              width: animation.value,
              decoration: const BoxDecoration(
                color: Colors.greenAccent
              ),
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
