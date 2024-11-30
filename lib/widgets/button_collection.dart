import 'package:flutter/material.dart';

whiteButton(BuildContext context, VoidCallback onPressed, IconData icon, String text){
   return MaterialButton(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(7),
     ),
     color: Colors.white,
       onPressed: onPressed,
      child: SizedBox(
        height: 55,
        width: MediaQuery.of(context).size.width*.75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 30,),
            Text(text),
          ],
        ),
      ),
   );
}