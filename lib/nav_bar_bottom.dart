import 'package:datascape/screens/attendance.dart';
import 'package:datascape/screens/home.dart';
import 'package:datascape/screens/leave.dart';
import 'package:datascape/screens/task.dart';
import 'package:datascape/widgets/color_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarBottom extends StatefulWidget {
  const NavBarBottom({super.key});

  @override
  State<NavBarBottom> createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
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
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
             highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(

              backgroundColor: koraNeel,
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              selectedItemColor: sada,
              showUnselectedLabels: true,
              unselectedItemColor: olpoSada,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },


              items: [
                BottomNavigationBarItem(
                  backgroundColor: koraNeel,
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person_circle),
                    label: "Attendance"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.door_back_door_outlined), label: "Leave"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.money_dollar_circle),
                    label: "Task"),
              ]
          ),
        ),
      ),
    );
  }
}
