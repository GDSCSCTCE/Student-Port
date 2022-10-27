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
  static final CONTENT_LABELS = [
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
      'issubmit': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
