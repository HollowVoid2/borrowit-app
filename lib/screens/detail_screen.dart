import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, String> loan;

  const DetailScreen({super.key, required this.loan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Objeto: ${loan["objeto"]}'),
            const SizedBox(height: 10),
            Text('Prestado a: ${loan["persona"]}'),
            const SizedBox(height: 10),
            Text('Fecha devolución: ${loan["fecha"]}'),
          ],
        ),
      ),
    );
  }
}