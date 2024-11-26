import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/color_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(70), child: Container(
        height: double.infinity,
        color: koraNeel,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Icon(Icons.menu,size: 30,color: sada,)
            ],
          ),
        ),
      )),
      // appBar: AppBar(
      //   backgroundColor: koraNeel,
      //   leading: Icon(Icons.menu,color: sada,size: 30,),
      //   title: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text("Hi, Md. Farjan Hasan!",style: myStyle(22, sada ,FontWeight.bold),),
      //       Text("Explore the dashboard"),
      //     ],
      //   ),
      // ),

    );
  }
}
