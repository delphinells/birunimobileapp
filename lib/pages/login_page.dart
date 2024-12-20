import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onThemeToggle; // Tema değiştirme fonksiyonu
  final bool isBlueLight; // Mavi ışık modunun açık olup olmadığını kontrol eder

  const LoginPage({super.key, required this.onThemeToggle, required this.isBlueLight});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Animasyonun başlaması için bir süre bekleme
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
        title: const Text("Biruni Üniversitesi"),
        actions: [
          IconButton(
            icon: Icon(
              widget.isBlueLight ? Icons.lightbulb : Icons.brightness_6,
              color: widget.isBlueLight ? Colors.orange : null,
            ),
            onPressed: widget.onThemeToggle,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 55, 53, 186), Color.fromARGB(255, 31, 3, 123)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Image.asset(
                    'assets/images/biruni_logo.png', // Logo dosyasını eklediğinizden emin olun
                    height: 150,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Biruni Üniversitesi'ne Hoşgeldiniz",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              "Student Login",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                hintText: "Edu Email ID",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 247, 246, 244),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); // Ana sayfaya yönlendir
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register'); // Kayıt ol sayfasına yönlendir
              },
              child: const Text(
                "Kayıt Ol",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
