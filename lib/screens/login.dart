import 'dart:math';

import 'package:datascape/widgets/button_collection.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -100,
            top: -200,
            child: Transform.rotate(
              angle: pi*.35,
              child: Container(
                height: MediaQuery.of(context).size.height*.650,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("lib/images/images (1).jpg"))),
              ),
            ),
          ),
          Positioned(
            right: 50,
              top: 190,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("lib/images/electric.jpg"),)
          ),

          Container(
            width: double.infinity,

            child: Column(
              children: [
                Spacer(),
                  Text("Login",style: h1Title(),),
                  SizedBox(height: 40,),
                  whiteButton(
                    context,
                      (){},
                      Icons.ac_unit,
                    "Continue with Google"
                  ),
                SizedBox(height: 50,),
                Tet

              ],
            ),
          )
        ],
      )
    );
  }
}
