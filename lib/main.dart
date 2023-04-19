import 'package:flutter/material.dart';
import 'package:rive_animation/screens/animation_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of  application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Flutter Way',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,

      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const AnimationScreen(),
    );
  }
}

