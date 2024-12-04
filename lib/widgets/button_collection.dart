import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';

whiteButton(BuildContext context, VoidCallback onPressed, Widget logo, String text){
   return MaterialButton(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(7),
     ),
     color: Colors.white,
       onPressed: onPressed,
      child: SizedBox(
        height: 55,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logo,
            SizedBox(width: 20,),
            Text(text,style: myStyle(16),),
          ],
        ),
      ),
   );
}