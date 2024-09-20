import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'changebuttoncontroller.dart';
import 'chnagebuttonwidget1.dart';

class ChanageButtonPage1 extends StatefulWidget {
  const ChanageButtonPage1({super.key});

  @override
  State<ChanageButtonPage1> createState() => _ChanageButtonPage1State();
}

class _ChanageButtonPage1State extends State<ChanageButtonPage1> {
  ChangeButtonController changeButtonControllerColor = Get.put(ChangeButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ChangeButtonController>(
        id: GetBuilderConstants.getButtonController,
        init: changeButtonControllerColor,
        builder: (ChangeButtonController controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChangeButtonWidget1(
                    title: "Email",
                    onTap: () {
                      controller.emailButton(context);
                    },
                    isSelected: controller.email,
                  ),
                  const SizedBox(width: 30),
                  ChangeButtonWidget1(
                    title: "Phone",
                    onTap: () {
                      controller.phoneButton();
                    },
                    isSelected: controller.phone,
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
