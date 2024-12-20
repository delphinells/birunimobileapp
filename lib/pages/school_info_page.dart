import 'package:flutter/material.dart';

class SchoolInfoPage extends StatelessWidget {
  const SchoolInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Okul Bilgileri'),
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
      ),
      body: const Center(
        child: Text(
          'Okul bilgileri burada olacak.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}


