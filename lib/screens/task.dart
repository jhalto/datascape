
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/task_drawer.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}
class _TaskState extends State<Task> {
  AdvancedDrawerController _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      drawer: TaskDrawer(),
      controller: _advancedDrawerController,
      child: Scaffold(
        
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: customAppbar(
                onPressed: (){
                  _advancedDrawerController.showDrawer();
                },
            )
        ),
        body: Center(
          child: Text("Welcome to Task Management"),
        ),    
      ),
    );
  }
}
