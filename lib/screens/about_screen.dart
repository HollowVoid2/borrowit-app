import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre la App')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'BorrowIt es una aplicación que permite gestionar préstamos '
          'de objetos personales entre estudiantes, evitando pérdidas '
          'y mejorando la organización.',
        ),
      ),
    );
  }
}