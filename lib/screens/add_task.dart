import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {


  final TextEditingController _projectController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _taskController = TextEditingController();
  final FocusNode _focusNodeProject = FocusNode();
  final FocusNode _focusNodeTask = FocusNode();
  final FocusNode _focusNodeDetail = FocusNode();
  var selectedDate = DateTime.now();

  var focusDate = DateTime.now();


  bool _showBody = false; // Flag to toggle the visibility of the body



  void _toggleBody() {
    setState(() {
      _showBody = !_showBody; // Toggle the visibility of the body
    });
  }

  @override
  void dispose() {
    _focusNodeProject.dispose();
    _focusNodeDetail.dispose();
    _projectController.dispose();
    _detailController.dispose();
    _focusNodeTask.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true, // Allows the modal to resize for the keyboard
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter modalSetState) {
                // Focus the first text field after a short delay
                Future.delayed(Duration.zero, () {
                  _focusNodeTask.requestFocus();
                });
                return Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Wrap(
                    children: [
                      BottomForm(
                        hint: "Task Name",
                        function: () {
                          Future.delayed(Duration.zero, () {
                             if(_showBody){
                               _focusNodeDetail.requestFocus();
                             }else{
                               Navigator.pop(context);
                             }


                          });
                        },
                        focusNode: _focusNodeTask,
                        textEditingController: _taskController,
                      ),
                      if (_showBody)
                        BottomForm(function: (){}, focusNode: _focusNodeDetail, textEditingController: _detailController, hint: "Details"),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: (){
                                modalSetState(() {

                                  _showBody = !_showBody; // Toggle the visibility of the body
                                  _focusNodeDetail.requestFocus();
                                });

                              },
                              child: Icon(Icons.menu)),
                          IconButton(
                            onPressed: () {
                              SystemChannels.textInput.invokeMethod('TextInput.hide');
                              showAdaptiveDialog(
                                context: context,
                                builder: (context) => Dialog(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      height: 350,
                                      child: TableCalendar(
                                        focusedDay: DateTime.now(),
                                        firstDay: DateTime.utc(2024),
                                        lastDay: DateTime.utc(2030),
                                        selectedDayPredicate: (day) {
                                          return isSameDay(selectedDate, day);
                                        },
                                        onDaySelected: (selectedDay, focusedDay) {
                                          modalSetState(() {
                                            selectedDate = selectedDay;
                                            focusDate = focusedDay; // update `_focusedDay` here as well
                                          });
                                          Navigator.pop(context); // Close the dialog after selection
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(CupertinoIcons.time),
                          ),
                          GestureDetector(
                            onTap: () {
                              modalSetState(() {
                                _showBody = !_showBody; // Toggle the visibility of the body
                              });
                            },
                            child: Icon(Icons.details),
                          ),

                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );


      },
      child: const Icon(Icons.add),
    );
  }
}

class BottomForm extends StatelessWidget {
  const BottomForm({
    super.key,
    required this.function,
    required this.focusNode,
    required this.textEditingController,
    required this.hint,
    this.action,
  });

  final VoidCallback function;
  final TextInputAction? action;
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
         16.0,

      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onEditingComplete: function, // Trigger the navigation function
            focusNode: focusNode,

            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}


