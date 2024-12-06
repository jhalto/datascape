import 'package:datascape/widgets/botom_form_widget.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  TextEditingController _pojectController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomForm(focusNode: _focusNode, textEditingController: _pojectController, function: () {

      },),
    );
  }
}
