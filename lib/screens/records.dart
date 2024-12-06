import 'package:datascape/add_task_pages/project.dart';
import 'package:datascape/screens/add_task.dart';
import 'package:datascape/widgets/custom_colors.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Management Records"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              ListView.builder(
               physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 30,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),

                  child:  Card(

                    color: fieldColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(

                        fit: FlexFit.loose,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Title:",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default"))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Project Name",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default")),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Assin By",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default")),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Status",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default"))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Schedule working date",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default"))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Completed Date",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default"))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(flex:2,child: Text("Priority",style: taskRecordTitle(),)),
                                Expanded(flex:3,child: Text("default"))
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ),
          ],

        ),
      ),
      floatingActionButton: AddTask(),
    );
  }
}
