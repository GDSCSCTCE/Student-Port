import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sct_lab/views/home_screen/assignments.dart';
import 'package:sct_lab/views/home_screen/home_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    const HomeScreen(),
    const Assignment(),
    Container(),
    Container(),
  ];
  List<BottomNavigationBarItem> _getBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.grey[600],
        ),
        label: "Home",
        activeIcon: const Icon(
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
        activeIcon: const Icon(
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
        activeIcon: const Icon(
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
        activeIcon: const Icon(
          Icons.notifications,
          color: Colors.blue,
        ),
      ),
    ];
  }

  Widget _bottomNavigationSheet() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      backgroundColor: const Color(0xfffbfbfb),
      elevation: 0,
      selectedLabelStyle: GoogleFonts.poppins(color: const Color(0xff212121)),
      unselectedLabelStyle: GoogleFonts.poppins(color: const Color(0xff212121)),
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: _getBottomNavBarItems(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex == 0) {
          return true;
        }
        setState(() {
          _selectedIndex = 0;
        });
        return false;
      },
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: _bottomNavigationSheet(),
      ),
    );
  }
}
