import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Duyurular'),
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
      ),
      body: const Center(
        child: Text(
          'Duyurular burada olacak.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
