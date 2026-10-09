import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Ui practices",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
