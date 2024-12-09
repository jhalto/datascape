
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
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      
        height: double.infinity,
        color: koraNeel,
        child: Padding(
          padding: EdgeInsets.only(right:7,top: screenHeight*.05),
          child: Row(
      
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
      
                children: [
                  const SizedBox(width: 10,),
                  GestureDetector(onTap: widget.onPressed, child: const Icon(Icons.menu,color: Colors.white,size: 30,)),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, MD. Farjan Hasan!",maxLines: 1,style: myStyle(18,sada,FontWeight.bold),),
                        Text("Explore the dashboard",style: myStyle(12,sada),),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(CupertinoIcons.bell_fill,color: sada,size: 35,),
                  const SizedBox(width: 15,),
                  PopupMenuButton(
      
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          onTap: (){
                            Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => const Login()),
                                  (route) => false,
                            );
                          },
                          value: "Logout",
                          child: const Text("Logout")),
                      const PopupMenuItem(child: Text("hello")),
      
                    ],
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("lib/images/google-logo.png"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      
      ),
    );
  }
}