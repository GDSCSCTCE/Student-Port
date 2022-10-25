import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const CONTENT_LABELS = [
    'Activity',
    'Analysis',
    'Certificate Request',
    'Chat',
    'Circulars',
    'Counselling',
    'Dues',
    'Exam Schedule'
  ];

  List<BottomNavigationBarItem> _getBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.grey[600],
        ),
        label: "Home",
        activeIcon: Icon(
          Icons.home,
          color: Colors.blue,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.assignment,
          color: Colors.grey[600],
          size: 20,
        ),
        label: "Assignments",
        activeIcon: Icon(
          Icons.assignment,
          color: Colors.blue,
          size: 20,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.my_library_books,
          color: Colors.grey[600],
        ),
        label: "Study Materials",
        activeIcon: Icon(
          Icons.my_library_books,
          color: Colors.blue,
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Colors.grey[600],
        ),
        label: "Notice Board",
        activeIcon: Icon(
          Icons.notifications,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Widget _bottomNavigationSheet() {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: const Color(0xfffbfbfb),
      elevation: 0,
      selectedLabelStyle: GoogleFonts.poppins(color: Color(0xff212121)),
      unselectedLabelStyle: GoogleFonts.poppins(color: Color(0xff212121)),
      onTap: (int index) {},
      items: _getBottomNavBarItems(),
    );
  }

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
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }

  Widget _getAttendanceCard() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
          )
        ],
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
            progressColor: Color(0xff97CB43),
            backgroundColor: Colors.white,
          ),
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
            blurRadius: 5.0,
          )
        ],
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 25.w,
          mainAxisExtent: 130,
          mainAxisSpacing: 10,
        ),
        addAutomaticKeepAlives: true,
        itemCount: 8,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                Image.asset("assets/home_screen/cont_$index.png"),
                Text(
                  CONTENT_LABELS[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
    return Scaffold(
      body: Stack(
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
                  SizedBox(
                    height: 20,
                  ),
                  _getMainContentCard()
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationSheet(),
    );
  }
}
