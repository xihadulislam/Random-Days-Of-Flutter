import 'package:days_of_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Juice Shop',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.orange, brightness: Brightness.light),
      home: const HomeScreen(),
    );
  }
}
