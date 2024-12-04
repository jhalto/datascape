import 'package:datascape/curved_nav_bar.dart';
import 'package:datascape/nav_bar_bottom.dart';
import 'package:datascape/persistent_nav_bar.dart';
import 'package:datascape/screens/attendance.dart';
import 'package:datascape/screens/home.dart';
import 'package:datascape/screens/leave.dart';
import 'package:datascape/screens/login.dart';
import 'package:datascape/screens/task.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      title: 'Datascape',
      theme: ThemeData(
        appBarTheme: AppBarTheme(

        )
        
      ),
      darkTheme: ThemeData.dark(),
      home: PersistentNavBar()
    );
  }
}
