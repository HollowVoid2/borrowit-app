import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            SizedBox(height: 20),
            Text('Juan Pérez', style: TextStyle(fontSize: 18)),
            Text('juan@email.com'),
          ],
        ),
      ),
    );
  }
}