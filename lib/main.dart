import 'package:flutter/material.dart';
import 'package:timetrackerapp/app/landing/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time Tracker",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LandingPage(),
    );
  }
}
