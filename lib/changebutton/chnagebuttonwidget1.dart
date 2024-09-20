import 'package:flutter/material.dart';

class ChangeButtonWidget1 extends StatelessWidget {
  final String title;
  bool isSelected;
  final void Function()? onTap;

  ChangeButtonWidget1({
    super.key,
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isSelected ? Colors.red : Colors.transparent,
                  width: 2,
                ),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.red : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
