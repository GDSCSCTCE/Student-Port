import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sct_lab/views/home_screen/home_screen.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pushToHome();
  }

  void _pushToHome() async {
    await Future.delayed(Duration(seconds: 2));

    if (mounted) {
      Navigator.pushReplacement(context,
          CupertinoPageRoute(builder: (builder) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff5DB0F5),
              Color(0xff1F4CA8),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'sctlab',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 30.h,
              ),
              CupertinoActivityIndicator(
                color: Colors.white,
                radius: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
