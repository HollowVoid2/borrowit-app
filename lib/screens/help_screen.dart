import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ayuda')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('¿Cómo registrar un préstamo?'),
            SizedBox(height: 10),
            Text('Presiona el botón "+" y completa los datos.'),
            SizedBox(height: 20),
            Text('¿Cómo recuperar un objeto?'),
            Text('Revisa la lista y contacta a la persona.'),
          ],
        ),
      ),
    );
  }
}