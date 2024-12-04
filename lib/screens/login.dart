import 'dart:math';

import 'package:datascape/widgets/button_collection.dart';
import 'package:datascape/widgets/custom_text_from_field.dart';
import 'package:datascape/widgets/drawer_design.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _drawerController = AdvancedDrawerController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _drawerController,
      drawer: DrawerDesign(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: -100,
              top: -200,
              child: Transform.rotate(
                angle: pi*.35,
                child: Container(
                  height: MediaQuery.of(context).size.height*.700,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("lib/images/images (1).jpg"))),
                ),
              ),
            ),
            Positioned(
              right: 50,
                top: 215,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("lib/images/electric.jpg"),)
            ),

            Container(
              width: double.infinity,
              padding:  EdgeInsets.symmetric(horizontal: 40),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                    SizedBox(height: 120,),
                    Text("Login",style: h1Title(),),
                    SizedBox(height: 40,),
                    customTextFromField(hintText: "Email", controller: _emailController),
                    SizedBox(
                      height: 20,
                    ),
                    customTextFromField(hintText: "Password", controller: _passwordController),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Divider(),
                  ),
                  Text("or"),
                    SizedBox(height: 20,),
                    whiteButton(
                      context,
                        (){},
                        Image.asset("lib/images/google-logo.png",height: 35,width: 35,),
                      "Continue with Google"
                    ),

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
