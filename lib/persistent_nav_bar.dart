import 'package:datascape/screens/attendance.dart';
import 'package:datascape/screens/home.dart';
import 'package:datascape/screens/leave.dart';
import 'package:datascape/screens/task.dart';
import 'package:datascape/widgets/drawer_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
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

      tabs: [
        PersistentTabConfig(
          screen: Home(),
          item: ItemConfig(
            icon: Icon(Icons.home),

          ),
        ),
        PersistentTabConfig(
          screen: Attendance(),
          item: ItemConfig(
            icon: Icon(Icons.person),
          ),
        ),
        PersistentTabConfig(
          screen: Leave(),
          item: ItemConfig(
            icon: Icon(Icons.settings),
          ),
        ),
        PersistentTabConfig(
          screen: Task(),
          item: ItemConfig(
            icon: Icon(Icons.task),
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style2BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
