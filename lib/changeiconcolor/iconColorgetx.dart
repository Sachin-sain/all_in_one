import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class IconColorGetx extends StatefulWidget {
  const IconColorGetx({super.key});

  @override
  State<IconColorGetx> createState() => _IconColorGetxState();
}

class _IconColorGetxState extends State<IconColorGetx> {
  Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    // return GetBuilder(
    //   init: controller,
    //     id: ControllerBuilder.iconColorPage,
    //     builder:(Controller controller){
        return Scaffold(
          body: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: controller.onClick,
                  child:Obx(
                        () => Icon(Icons.heart_broken,color: controller.isClick.value?Colors.red:Colors.greenAccent,)
                  ),
            ),

                const SizedBox(height: 20,),
                Visibility(
                  visible: controller.isVisible.value,
                    child: GestureDetector(
                      onTap: controller.onTap,
                      child: controller.isVisible.value?Text('Show'):Text("Hide"),
                    )
                ),
              ],
            ),
          ),
        );
        }
    // );
  // }
}
