import 'package:datascape/screens/attendance.dart';
import 'package:datascape/screens/home.dart';
import 'package:datascape/screens/leave.dart';
import 'package:datascape/screens/task.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersistentNavBar extends StatefulWidget {
  const PersistentNavBar({super.key});

  @override
  State<PersistentNavBar> createState() => _PersistentNavBarState();
}

class _PersistentNavBarState extends State<PersistentNavBar> {

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
     stateManagement: true,
       navBarHeight: MediaQuery.of(context).size.height *.07,
      tabs: [
        PersistentTabConfig(
          screen: const Home(),
          item: ItemConfig(
            icon: const Icon(Icons.home),

          ),
        ),
        PersistentTabConfig(
          screen: const Attendance(),
          item: ItemConfig(
            icon: const Icon(Icons.person),
          ),
        ),
        PersistentTabConfig(
          screen: const Leave(),
          item: ItemConfig(
            icon: const Icon(Icons.settings),
          ),
        ),
        PersistentTabConfig(
          screen: const Task(),
          item: ItemConfig(
            icon: const Icon(Icons.task),
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style2BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
