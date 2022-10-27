import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  static final ASSMNT_CONTENT = [
    {
      'id': 1,
      'course': 'Course 1',
      'name': 'Assignament-1',
      'isssue': DateTime(2022, 10, 5),
      'last': DateTime(2022, 10, 6),
      'issubmit': false,
    },
    {
      'id': 2,
      'course': 'Course 2',
      'name': 'Assignament-1',
      'isssue': DateTime(2022, 10, 5),
      'last': DateTime(2022, 10, 6),
      'issubmit': true,
    },
    {
      'id': 3,
      'course': 'Course 3',
      'name': 'Assignament-1',
      'isssue': DateTime(2022, 10, 5),
      'last': DateTime(2022, 10, 6),
      'issubmitted': false,
    },
  ];

  Card _asmtCard(Map a) {
    return a['issubmitted']
        ? Card(
            color: Colors.green,
          )
        : Card(
            color: Colors.red,
          );
  }

  AppBar _asmntAppBar() {
    return AppBar(
      elevation: 5,
      leading: const Icon(Icons.menu),
      title: Text('Assignment'),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _asmntAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  height: 23.h,
                ),
              ),
              ListView.builder(itemBuilder: (context, idx) {
                return _asmtCard(ASSMNT_CONTENT[idx]);
              }),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
