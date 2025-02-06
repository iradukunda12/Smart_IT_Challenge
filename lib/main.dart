import 'package:flutter/material.dart';
import 'package:smart_it_challenge_ui/components/bottom_navbar.dart';
import 'package:smart_it_challenge_ui/page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 35, 115, 207),
        body: SafeArea(
          child: LandingPage(),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
