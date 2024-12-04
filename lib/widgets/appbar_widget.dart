
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_widgets.dart';
import 'font_style_widgets.dart';

class customAppbar extends StatelessWidget {
  customAppbar({
    super.key, this.onPressed
  });
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: double.infinity,
      color: koraNeel,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15,top: 50),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: onPressed, icon: Icon(Icons.menu,color: Colors.white,)),
            SizedBox(width: 15,),
            SizedBox(
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi, MD. Farjan Hasan!",style: myStyle(20,sada,FontWeight.bold),),
                  Text("Explore the dashboard",style: myStyle(12,sada),),
                ],
              ),
            ),
            SizedBox(width: 20,),
         
            Icon(CupertinoIcons.bell_fill,color: sada,size: 40,),
            SizedBox(width: 10,),
            CircleAvatar(
              child: Icon(CupertinoIcons.person_alt_circle_fill),
            ),
          ],
        ),
      ),

    );
  }
}