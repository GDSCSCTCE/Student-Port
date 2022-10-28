import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final contentLabel = [
    'Activity',
    'Analysis',
    'Certificate Request',
    'Chat',
    'Circulars',
    'Counselling',
    'Dues',
    'Exam Schedule'
  ];

  Map<String, List<String>> timeTable = {
    'M': [
      'Course 1',
      'Course 2',
      'Course 1',
      'Course 4',
      'Course 5',
      'Course 6',
    ],
    'T': [
      'Course 1',
      'Course 2',
      'Course 1',
      'Course 4',
      'Course 5',
      'Course 6',
    ],
    'W': [
      'Course 1',
      'Course 2',
      'Course 1',
      'Course 4',
      'Course 5',
      'Course 6',
    ],
    'Th': [
      'Course 1',
      'Course 2',
      'Course 1',
      'Course 4',
      'Course 5',
      'Course 6',
    ],
    'F': [
      'Course 1',
      'Course 2',
      'Course 1',
      'Course 4',
      'Course 5',
      'Course 6',
    ],
  };

  var _timeTableDay = 'M';

  Widget _getAppBar() {
    return Container(
      height: 30.h,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff5DB0F5),
            Color(0xff1F4CA8),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.vertical(
            bottom:
                Radius.elliptical(MediaQuery.of(context).size.width, 200.0)),
      ),
      child: Text(
        "Arakkal Abu".toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }

  Widget _getAttendanceCard() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Attendance For The Semester",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          CircularPercentIndicator(
            radius: 30,
            lineWidth: 5,
            percent: .5,
            animationDuration: 700,
            animation: true,
            curve: Curves.decelerate,
            restartAnimation: false,
            animateFromLastPercent: false,
            center: const Text(
              "50%",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: const Color(0xff97CB43),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  ElevatedButton _dayButton(e) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor:
              e == _timeTableDay ? Colors.green : Colors.blueAccent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: CircleBorder(side: BorderSide.none)),
      onPressed: () {
        setState(() {
          _timeTableDay = e;
        });
      },
      child: Text(e),
    );
  }

  Widget _getTimeTablecard() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonBar(
                buttonPadding: EdgeInsets.zero,
                alignment: MainAxisAlignment.center,
                children: [...timeTable.keys.map((e) => _dayButton(e))],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              physics: PageScrollPhysics(),
              itemBuilder: (context, index) => Card(
                  elevation: 3,
                  color: Colors.blue[700],
                  child: Container(
                    alignment: Alignment.center,
                    width: 80.w,
                    child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        timeTable[_timeTableDay]![index]),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _getMainContentCard() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            )
          ]),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 25.w,
          mainAxisExtent: 130,
          mainAxisSpacing: 10,
        ),
        addAutomaticKeepAlives: true,
        itemCount: 8,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset("assets/home_screen/cont_$index.png"),
                Text(
                  contentLabel[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.loose,
      children: [
        _getAppBar(),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 23.h,
                ),
                _getAttendanceCard(),
                const SizedBox(
                  height: 20,
                ),
                _getTimeTablecard(),
                const SizedBox(
                  height: 20,
                ),
                _getMainContentCard()
              ],
            ),
          ),
        )
      ],
    );
  }
}
