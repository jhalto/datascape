import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController _projectController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final FocusNode _focusNodeProject = FocusNode();
  final FocusNode _focusNodeTitle = FocusNode();
  var selectedDate = DateTime.now();

  var focusDate = DateTime.now();

  @override
  void dispose() {
    _focusNodeProject.dispose();
    _focusNodeTitle.dispose();
    _projectController.dispose();
    _titleController.dispose();

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
            // Focus the first text field after a short delay
            Future.delayed(Duration.zero, () {
              _focusNodeProject.requestFocus();
            });
            return Padding(
                padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 16.0,
                bottom: MediaQuery.of(context).viewInsets.bottom,),
              child: Wrap(
                children: [
                  BottomForm(
                    hint: "Project Name",
                    function: () {

                      Future.delayed(const Duration(milliseconds: 1), () {
                        _focusNodeTitle.requestFocus();
                        Navigator.pop(context);

                      });

                    },
                    focusNode: _focusNodeProject,
                    textEditingController: _projectController,
                  ),
                  Row(
                    children: [
                      Icon(Icons.menu),
                      IconButton(onPressed: (){
                        showAdaptiveDialog(context: context, builder: (context) => Dialog(
                          child: Container(
                            child: Column(
                              children: [

                                TableCalendar(

                                  focusedDay: DateTime.now(),
                                  firstDay: DateTime.utc(2024),
                                  lastDay: DateTime.utc(2030),
                                  selectedDayPredicate: (day) {
                                    return isSameDay(selectedDate, day);
                                  },
                                  onDaySelected: (selectedDay, focusedDay) {
                                    setState(() {
                                      selectedDate = selectedDay;
                                      focusDate = focusedDay; // update `_focusedDay` here as well
                                    });
                                    Navigator.pop(context); // Close the dialog after selection
                                  },

                                )
                              ],
                            ),
                          ),


                        ),);

                      }, icon: Icon(CupertinoIcons.time))
                    ],
                  )
                ],
              ),
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
  });

  final VoidCallback function;
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
