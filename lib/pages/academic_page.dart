import 'package:flutter/material.dart';

class AcademicPage extends StatelessWidget {
  const AcademicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akademik'),
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
      ),
      body: const Center(
        child: Text(
          'Akademik bilgiler burada olacak.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
