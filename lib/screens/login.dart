import 'dart:math';

import 'package:datascape/widgets/button_collection.dart';
import 'package:datascape/widgets/custom_text_from_field.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            left: -screenWidth * 0.2, // Adjust dynamically based on screen width
            top: -screenHeight * 0.3, // Adjust dynamically based on screen height
            child: Transform.rotate(
              angle: pi * 0.35,
              child: Container(
                height: screenHeight * .70, // Scale height dynamically
                width: screenWidth * .60, // Scale width dynamically
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover, // Ensure the image fills the container
                    image: AssetImage("lib/images/images (1).jpg"),
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   right: MediaQuery.of(context).size.height*.06,
          //     top: MediaQuery.of(context).size.height*.16,
          //     child: CircleAvatar(
          //       radius: 50,
          //       backgroundImage: AssetImage("lib/images/electric.jpg"),)
          // ),

          Container(
            width: double.infinity,
            padding:  EdgeInsets.symmetric(horizontal: 40),

            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                    SizedBox(height: 150,),
                    Text("Login",style: h1Title(),),
                    SizedBox(height: 40,),
                    customTextFromField(hintText: "Email", controller: _emailController),
                    SizedBox(
                      height: 20,
                    ),
                    customTextFromField(hintText: "Password", controller: _passwordController),
                   SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password"),
                  ),
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
            ),
          )
        ],
      )
    );
  }
}
