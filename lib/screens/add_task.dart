
import 'package:datascape/widgets/botom_form_widget.dart';
import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
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
              // Focus the text field after a short delay
              Future.delayed(Duration.zero, () {
                _focusNode.requestFocus();
              });
              return BottomForm(function:() {
                  Container();

              },focusNode: _focusNode, textEditingController: _textEditingController);
            },
          );
        },
        child: Icon(Icons.add),
      );
  }
}
