import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_app/component/widgets/gap.dart';
import 'package:travel_app/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0172B2),
              Color(0xff001645),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Travel',
                  style: TextStyle(
                    fontFamily: 'Lobster-Regular',
                    color: Colors.white,
                    fontSize: 44,
                  ),
                ),
                GapWidgets.w8,
                Image.asset(
                  'assets/images/world_icon.png',
                  width: 36,
                )
              ],
            ),
            GapWidgets.h16,
            const Text(
              'Find your Dream',
              style: TextStyle(
                fontFamily: 'Roboto-Medium',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Text(
              'Destination with us',
              style: TextStyle(
                fontFamily: 'Roboto-Medium',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
