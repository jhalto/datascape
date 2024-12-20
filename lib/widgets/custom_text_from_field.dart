import 'package:flutter/material.dart';

import 'custom_colors.dart';
import 'custom_widgets.dart';

class customTextFromField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  FormFieldValidator? validator;
  TextInputType? inputType;
  Decoration? decoration;
  Icon? icon;
customTextFromField({
  super.key,required this.hintText,required this.controller, this.validator, this.inputType,this.decoration,this.icon
});

@override
Widget build(BuildContext context) {
  return TextFormField(

    keyboardType: inputType,
    controller: controller,
    validator: validator,

    textInputAction:  TextInputAction.next,

    decoration: InputDecoration(


      prefixIcon: icon,
        filled: true,
      fillColor: fieldColor,
      hintText: hintText,
      hintStyle: hintTextStyle(),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      enabledBorder: OutlineInputBorder(

        borderSide: const BorderSide(

          width: 3,
          color: fieldColor,

        ),

        borderRadius: BorderRadius.circular(5),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2.5,
          color: nil,

        ),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}
}