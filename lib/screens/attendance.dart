import 'package:datascape/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: customAppbar(
            onPressed: (){},
          )
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
