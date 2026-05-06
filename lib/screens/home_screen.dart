import 'package:flutter/material.dart';
import 'add_loan_screen.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BorrowIt'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.cable),
            title: const Text('Cargador'),
            subtitle: const Text('Prestado a Juan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Libro'),
            subtitle: const Text('Prestado a María'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddLoanScreen(),
            ),
          );
        },
      ),
    );
  }
}

