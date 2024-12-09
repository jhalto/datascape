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

  DateTime? selectedDate; // Initially null
  TimeOfDay? selectedTime;
  DateTime focusDate = DateTime.now();
  bool _showBody = false;

  /// Reset all data
  void _resetData() {
    setState(() {
      _taskController.clear();
      _detailController.clear();
      _projectController.clear();
      selectedDate = null; // Reset to null
      selectedTime = null;
      _showBody = false;
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
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter modalSetState) {
                Future.delayed(Duration.zero, () {
                  _focusNodeTask.requestFocus();
                });
                return Padding(
                  padding: EdgeInsets.only(

                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Wrap(
                    children: [
                      BottomForm(
                        hint: "Task Name",
                        function: () {
                          Future.delayed(Duration.zero, () {
                            if (_showBody) {
                              _focusNodeDetail.requestFocus();
                            } else {
                              Navigator.pop(context);
                            }
                          });
                        },
                        focusNode: _focusNodeTask,
                        textEditingController: _taskController,
                      ),
                      if (_showBody)
                        BottomForm(
                          function: () {},
                          focusNode: _focusNodeDetail,
                          textEditingController: _detailController,
                          hint: "Details",
                        ),
                      Text(
                        selectedDate != null
                            ? "${selectedDate!.toLocal().toString().split(' ')[0]} ${selectedTime?.format(context) ?? ''}"
                            : "",
                        style: const TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              modalSetState(() {
                                _showBody = !_showBody;
                                _focusNodeDetail.requestFocus();
                              });
                            },
                            child: const Icon(Icons.menu),
                          ),
                          IconButton(
                            onPressed: () {
                              SystemChannels.textInput.invokeMethod('TextInput.hide');
                              showAdaptiveDialog(
                                context: context,
                                builder: (context) => Dialog(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 350,
                                          child: TableCalendar(
                                            focusedDay: focusDate,
                                            firstDay: DateTime.utc(2024),
                                            lastDay: DateTime.utc(2030),
                                            selectedDayPredicate: (day) {
                                              return isSameDay(selectedDate, day);
                                            },
                                            onDaySelected: (selectedDay, focusedDay) {
                                              modalSetState(() {
                                                selectedDate = selectedDay;
                                                focusDate = focusedDay;
                                              });
                                              Navigator.pop(context); // Close dialog
                                            },
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () async {
                                            TimeOfDay? time = await showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now(),
                                            );
                                            if (time != null) {
                                              modalSetState(() {
                                                selectedTime = time;
                                              });
                                            }
                                          },
                                          icon: const Icon(CupertinoIcons.time),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(CupertinoIcons.time),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: const Icon(Icons.details),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                );
              },
            );
          },
        ).whenComplete(() {
          _resetData();
        });
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          onEditingComplete: function,
          focusNode: focusNode,
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}
