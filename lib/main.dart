import 'package:datascape/persistent_nav_bar.dart';
import 'package:flutter/material.dart';

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
        appBarTheme: const AppBarTheme(

        )
        
      ),
      darkTheme: ThemeData.dark(),
      home: const PersistentNavBar()
    );
  }
}
