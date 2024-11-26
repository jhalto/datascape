import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:datascape/screens/attendance.dart';
import 'package:datascape/screens/home.dart';
import 'package:datascape/screens/leave.dart';
import 'package:datascape/screens/task.dart';
import 'package:datascape/widgets/color_widgets.dart';
import 'package:flutter/material.dart';

class CurvedNavBar extends StatefulWidget {
  const CurvedNavBar({super.key});

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  int currentIndex = 0;
  List<Widget> myPages = [
    Home(),
    Attendance(),
    Leave(),
    Payroll(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myPages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
       onTap: (value) {

         setState(() {
           currentIndex = value;
         });

       },
        animationCurve: FlippedCurve(Curves.ease),
        animationDuration: Duration(milliseconds: 250),
        backgroundColor: sada,
        color: koraNeel,
        items: [
         Icon(Icons.home,color: sada,),
         Icon(Icons.co_present_rounded,color: sada,),
         Icon(Icons.exit_to_app,color: sada,),
         Icon(Icons.task,color: sada,),


       ],
      ),
    );
  }
}
