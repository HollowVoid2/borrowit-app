import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Objeto: Cargador'),
            SizedBox(height: 10),
            Text('Prestado a: Juan'),
            SizedBox(height: 10),
            Text('Fecha devolución: 10/05'),
          ],
        ),
      ),
    );
  }
}