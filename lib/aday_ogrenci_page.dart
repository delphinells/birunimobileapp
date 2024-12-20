import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aday Öğrenci'),
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
      ),
      body: const Center(
        child: Text(
          'Öğrenci bilgileri burada olacak.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
