//
// import 'package:flutter/material.dart';
//
// class BottomForm extends StatelessWidget {
//   const BottomForm({
//     super.key,
//     required this.focusNode,
//     required this.function,
//     required this.textEditingController,
//   });
//   final FocusNode focusNode;
//   final TextEditingController textEditingController;
//   final VoidCallback function;
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: [
//         Padding(
//           padding: EdgeInsets.only(
//             left: 16.0,
//             right: 16.0,
//             top: 16.0,
//             bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust for the keyboard
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 onEditingComplete: function,
//                 focusNode: focusNode,
//                 controller: textEditingController,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Text',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 16),
//
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
