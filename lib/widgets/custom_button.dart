import 'package:flutter/material.dart';

import 'custom_colors.dart';

class customButton extends StatelessWidget {
  String? text;
  VoidCallback? onPressed;
  customButton({super.key, required this.text,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      height: 45,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      color: nil,
      onPressed: onPressed,
      child: Text('$text',style: const TextStyle(color: sada,fontWeight: FontWeight.bold),),


    );
  }
}
class addButton extends StatelessWidget {
  String? text;
  VoidCallback? onPressed;
  addButton({super.key, required this.text,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      onPressed: onPressed,
       color: nil,
      child: Text('$text',),

    );
  }
}
class whiteButton extends StatelessWidget {
  Widget widget;
  VoidCallback? onPressed;
  whiteButton({super.key, required this.onPressed,required this.widget});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      height: 45,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
      color: fieldColor,
      onPressed: onPressed,
      child: widget,


    );
  }
}