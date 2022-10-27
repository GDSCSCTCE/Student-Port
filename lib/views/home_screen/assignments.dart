import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  static final assmtContent = [
    {
      'id': 1,
      'course': 'Course 1',
      'name': 'Assignament-1',
      'issue': DateTime(2022, 10, 5),
      'last': DateTime(2022, 10, 6),
      'issubmitted': false,
      'sem': 'IIIrd Semester',
    },
    {
      'id': 2,
      'course': 'Course 2',
      'name': 'Assignament-1',
      'issue': DateTime(2022, 10, 5),
      'last': DateTime(2022, 10, 6),
      'issubmitted': true,
      'sem': 'IIIrd Semester',
    },
    {
      'id': 3,
      'course': 'Course 3',
      'name': 'Assignament-1',
      'issue': DateTime(2022, 10, 5),
      'last': DateTime(2022, 10, 6),
      'issubmitted': false,
      'sem': 'IIIrd Semester',
    },
  ];

  Card _asmtCard(Map a) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: a['issubmitted'] ? Colors.green : Colors.red,
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(8))),
            height: 20.h,
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text(a['course'])),
                  const Divider(),
                  Text(a['name']),
                  const SizedBox(height: 8),
                  Text(a['sem']),
                  const Divider(),
                  Text(
                      'Issued On:${DateFormat('dd/mm/yyyy HH:MM:SS').format(a['issue'])}'),
                  const SizedBox(height: 8),
                  Text(
                    style: const TextStyle(color: Colors.red),
                    'Issued On:${DateFormat('dd/mm/yyyy HH:MM:SS').format(a['last'])}',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _asmntAppBar() {
    return AppBar(
      elevation: 5,
      leading: const Icon(Icons.menu),
      title: const Text('Assignment'),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
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
              ListView.builder(
                itemCount: assmtContent.length,
                itemBuilder: (context, idx) {
                  return _asmtCard(assmtContent[idx]);
                },
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
