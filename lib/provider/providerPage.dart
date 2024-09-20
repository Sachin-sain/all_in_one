import 'package:all_in_one/provider/providercontroller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    print("HEllo");
    // final controller=Provider.of<ProviderController>(context,listen: true);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap:Provider.of<ProviderController>(context,listen: true).onClick,
                child: Consumer<ProviderController>(builder: (BuildContext context, controller, Widget? child) {
                  return Icon(Icons.heart_broken,color: controller.isClick?Colors.red:Colors.greenAccent,);
                },)
            )
          ],
        ),
      ),
    );
  }
}
