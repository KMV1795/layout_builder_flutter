import 'package:flutter/material.dart';
import 'Layout Builder/layout builder screen.dart';
import 'Sliver Builder/sliverAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: "Layout Builder",
      home: HomePage(),
    );
  }
}

