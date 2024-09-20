// import 'package:flutter/material.dart';
//
// class ChangeButtonWidget extends StatefulWidget {
//   final String title;
//   final VoidCallback onTap;
//   // final bool isSelect;
//
//   const ChangeButtonWidget({
//     super.key,
//     required this.title,
//     required this.onTap,
//   });
//
//   @override
//   State<ChangeButtonWidget> createState() => _ChangeButtonWidgetState();
// }
//
// class _ChangeButtonWidgetState extends State<ChangeButtonWidget> {
//    bool _isSelected=false;
//
//   @override
//   // void initState() {
//   //   super.initState();
//   //   _isSelected = widget.isSelect; // Initialize _isSelected based on widget.isSelect
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isSelected = !_isSelected; // Toggle the selection state
//         });
//         widget.onTap(); //
//       },
//       child: Container(
//         height: 50,
//         width: 150,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color:_isSelected ?Colors.greenAccent:Colors.red,
//         ),
//         child: Text(
//           widget.title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
