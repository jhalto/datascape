import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class Payroll extends StatelessWidget {
  const Payroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: customAppbar()
      ),
    );
  }
}
