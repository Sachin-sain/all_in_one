import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  RxBool isClick=false.obs;
  RxBool isVisible=true.obs;
  onClick(){
    isClick.value=!isClick.value;
    // update([ControllerBuilder.iconColorPage]);

  }
  onTap(){
    isVisible.value=!isVisible.value;
    // update([ControllerBuilder.iconColorPage]);
  }
}
class ControllerBuilder{
  static const iconColorPage="IconColorPage";
}

