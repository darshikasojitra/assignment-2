import 'package:flutter/material.dart';
import 'package:assignment_2/dashboard_screen.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: dashboard_screen(),
    );
  }
}
