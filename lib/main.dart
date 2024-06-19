import 'package:flutter/material.dart';
import 'package:travel_app/screen/splash_screen.dart';

void main() {
  runApp(
    const Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
