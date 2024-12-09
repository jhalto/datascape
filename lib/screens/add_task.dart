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
  final List<String> projectNames = ['Project A', 'Project B', 'Project C', 'Project D'];

  // Variable to store the selected project
  String? selectedProject;
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
    final List<String> projectNames = ['Project A', 'Project B', 'Project C'];

    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => AddTaskBottomSheet(
            projectNames: projectNames,
            onSave: (selectedProject, taskName, details, date, time) {
              // Handle the saved data here
              print("Project: $selectedProject");
              print("Task: $taskName");
              print("Details: $details");
              print("Date: $date");
              print("Time: $time");
            },
          ),
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
class AddTaskBottomSheet extends StatefulWidget {
  final List<String> projectNames;
  final Function(String?, String, String, DateTime?, TimeOfDay?) onSave;

  const AddTaskBottomSheet({
    super.key,
    required this.projectNames,
    required this.onSave,
  });

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();

  String? selectedProject;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  bool showDetails = false;

  @override
  void dispose() {
    _taskController.dispose();
    _detailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: const SizedBox.shrink(),
              value: selectedProject,
              hint: const Text("Select Project"),
              items: widget.projectNames.map((project) {
                return DropdownMenuItem(
                  value: project,
                  child: Text(project),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedProject = value;
                });
              },
            ),
          ),
          TextField(
            controller: _taskController,
            decoration: const InputDecoration(
              hintText: "Task Name",
              contentPadding: EdgeInsets.all(14.0),
            ),
          ),
          if (showDetails)
            TextField(
              controller: _detailController,
              decoration: const InputDecoration(
                hintText: "Details",
                contentPadding: EdgeInsets.all(14.0),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    selectedDate != null
                        ? "${selectedDate!.toLocal().toString().split(' ')[0]} ${selectedTime?.format(context) ?? ''}"
                        : "Select Date & Time",
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    FocusScope.of(context).unfocus();
                    DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.utc(2024),
                      lastDate: DateTime.utc(2030),
                    );
                    if (date != null) {
                      TimeOfDay? time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      setState(() {
                        selectedDate = date;
                        selectedTime = time;
                      });
                    }
                  },
                  icon: const Icon(Icons.calendar_today),
                ),
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    showDetails = !showDetails;
                  });
                },
                child: Text(showDetails ? "Hide Details" : "Add Details"),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  widget.onSave(
                    selectedProject,
                    _taskController.text,
                    _detailController.text,
                    selectedDate,
                    selectedTime,
                  );
                  Navigator.pop(context);
                },
                child: const Text("Save Task"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
