import 'package:flutter/material.dart';
import 'add_loan_screen.dart';
import 'detail_screen.dart';
import 'profile_screen.dart';
import 'help_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> loans = [
      {
        "objeto": "Cargador HP",
        "persona": "Juan",
        "fecha": "10/05"
      },
      {
        "objeto": "Libro de Programación",
        "persona": "María",
        "fecha": "12/05"
      },
      {
        "objeto": "Adaptador USB-C",
        "persona": "Carlos",
        "fecha": "15/05"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('BorrowIt'),
      ),

      // MENÚ
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'BorrowIt',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Ayuda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HelpScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Sobre la app'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutScreen()),
                );
              },
            ),
          ],
        ),
      ),

      //LISTA DINÁMICA
      body: ListView.builder(
        itemCount: loans.length,
        itemBuilder: (context, index) {
          final loan = loans[index];

          return ListTile(
            leading: const Icon(Icons.inventory),
            title: Text(loan["objeto"]!),
            subtitle: Text("Prestado a ${loan["persona"]}"),
            trailing: Text(loan["fecha"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(loan: loan),
                ),
              );
            },
          );
        },
      ),

      // ➕ BOTÓN
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AddLoanScreen(),
            ),
          );
        },
      ),
    );
  }
}