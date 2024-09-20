import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangeButtonController extends GetxController{
  bool email = true;
  bool phone = false;

  emailButton(BuildContext context) {
    email = true;
    phone = false;
    update([GetBuilderConstants.getButtonController]);
  }

  phoneButton() {
    email = false;
    phone = true;
    update([GetBuilderConstants.getButtonController]);
  }
}

class GetBuilderConstants {
  static const getButtonController = "GetButtonController";
}
