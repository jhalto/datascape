
import 'package:datascape/widgets/button_collection.dart';
import 'package:datascape/widgets/custom_button.dart';
import 'package:datascape/widgets/custom_text_from_field.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Stack(
        children: [

          Container(
            width: double.infinity,
            padding:  const EdgeInsets.symmetric(horizontal: 40),

            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                    Text("Login",style: h1Title(),),
                    const SizedBox(height: 40,),
                    customTextFromField(hintText: "Email", controller: _emailController),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextFromField(hintText: "Password", controller: _passwordController),
                   const SizedBox(height: 10,),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  whiteButton(onPressed: (){}, widget: const Text("Sign In")),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Divider(),
                  ),
                  const Text("or"),
                    const SizedBox(height: 20,),
                    whiteButton2(
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
