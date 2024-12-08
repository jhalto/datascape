import 'package:datascape/screens/add_task.dart';
import 'package:datascape/widgets/custom_colors.dart';
import 'package:datascape/widgets/custom_widgets.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/cupertino.dart';
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Icon(Icons.circle_outlined),
                                  ),),
                              Expanded(
                                  flex: 13,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(


                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Title",style: bodyBold(),),

                                              Icon(CupertinoIcons.star),
                                            ],
                                          ),
                                        ),
                                        Text("Project Name",style: taskRecordTitle(),),
                                        SizedBox(height: 5,),

                                        Row(
                                          children: [
                                            Image.asset("lib/images/lorem.png",height: 40,width: 40,),
                                            SizedBox(width: 10,),
                                            Column(
                                              children: [
                                                Text("Assign By",style: bodyBold(),),
                                                Text("Designation"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             Text("Date"),
                                             Text("Status"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ),

              ),
          ],

        ),
      ),
      floatingActionButton: AddTask()
    );
  }
}