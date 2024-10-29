import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/views/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rockit',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}