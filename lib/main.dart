import 'package:flutter/material.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/shared_theme/app_theme.dart';

void main() {
  runApp(const HomeScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: const AppTheme().themeData,
      home: const HomeScreen(),
    );
  }
}
