import 'package:flutter/material.dart';

class RegisterPageAlper extends StatefulWidget {
  const RegisterPageAlper({super.key});

  @override
  State<RegisterPageAlper> createState() => _RegisterPageAlperState();
}

class _RegisterPageAlperState extends State<RegisterPageAlper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Adınız',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Soyadınız',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'E-posta',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Şifre',
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Kayıt Ol'),
          ),
        ],
      ),
    );
  }
}
