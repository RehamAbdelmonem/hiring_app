import 'package:flutter/material.dart';
import 'package:hiring_app/screens/login_screen.dart';

void main() {
  runApp(const HiringApp());
}

class HiringApp extends StatelessWidget {
  const HiringApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

