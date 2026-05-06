import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // ✅ AQUÍ arriba

void main() {
  runApp(const BorrowItApp());
}

class BorrowItApp extends StatelessWidget {
  const BorrowItApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BorrowIt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}