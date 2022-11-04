import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo/main.dart';

class calendarpage extends StatefulWidget {
  const calendarpage({super.key});
  @override
  State<calendarpage> createState() => _MyAppState();
}

@override
class _MyAppState extends State<calendarpage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 11, 20),
            lastDay: DateTime.utc(2040, 10, 20),
            focusedDay: DateTime.now(),
            headerVisible: true,
            daysOfWeekVisible: true,
            sixWeekMonthsEnforced: true,
            shouldFillViewport: false,
            headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(101, 175, 133, 1),
                    fontWeight: FontWeight.w800)),
            calendarStyle: CalendarStyle(
                todayTextStyle: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFf6f5ee),
                    fontWeight: FontWeight.bold),
                todayDecoration: BoxDecoration(
                    color: Color.fromRGBO(101, 175, 133, 1),
                    shape: BoxShape.circle)),
          ),
        ),
      ),
    );
  }
}
