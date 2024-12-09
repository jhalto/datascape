import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/appbar_widget.dart';

class Leave extends StatefulWidget {
  const Leave({super.key});

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  var selectedDate = DateTime.now();

  var focusDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: customAppbar(
          )
      ),
      body: Column(
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
            },
            // calendarFormat: _calendarFormat,
            // onFormatChanged: (format) {
            //   setState(() {
            //     _calendarFormat = format;
            //   });
            // },
          )
        ],
      ),
    );
  }
}
