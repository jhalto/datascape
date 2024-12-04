
import 'package:datascape/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_widgets.dart';
import 'font_style_widgets.dart';

class customAppbar extends StatefulWidget {
  customAppbar({
    super.key, this.onPressed
  });
  VoidCallback? onPressed;

  @override
  State<customAppbar> createState() => _customAppbarState();
}

class _customAppbarState extends State<customAppbar> {
  String? _selectedValue;

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
            IconButton(onPressed: widget.onPressed, icon: Icon(Icons.menu,color: Colors.white,)),
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
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'Logout') {
                Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Login()),
                      (route) => false,
                );
              }
            }
            ,itemBuilder: (context) => [
            PopupMenuItem(
                value: "Logout",
                child: Text("Logout")),
            PopupMenuItem(child: Text("hello")),

          ],
              child: CircleAvatar(
                backgroundImage: AssetImage("lib/images/google-logo.png"),
              ),
          ),

          ],
        ),
      ),

    );
  }
}