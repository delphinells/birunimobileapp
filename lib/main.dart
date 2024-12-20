
import 'package:biruniapp/pages/about_page.dart';
import 'package:biruniapp/pages/academic_page.dart';
import 'package:biruniapp/pages/announcements_page.dart';
import 'package:biruniapp/pages/contact_page.dart';
import 'package:biruniapp/pages/home_page.dart';
import 'package:biruniapp/pages/login_page.dart';
import 'package:biruniapp/pages/profile_page.dart';
import 'package:biruniapp/pages/register_page.dart';
import 'package:biruniapp/pages/school_info_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Varsayılan tema
  bool _isBlueLight = false; // Mavi ışık modu kapalı

  void _toggleTheme() {
    setState(() {
      if (_isBlueLight) {
        _isBlueLight = false;
        _themeMode = ThemeMode.light;
      } else if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _isBlueLight = true;
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isBlueLight
          ? ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.orange,
              scaffoldBackgroundColor: const Color(0xFFFFF8E1), // Mavi ışık modu için sarımsı arka plan
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Color(0xFF4E342E)), // Metin rengi
                bodyMedium: TextStyle(color: Color(0xFF4E342E)),
              ),
            )
          : ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      themeMode: _themeMode, // Tema modu
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(onThemeToggle: _toggleTheme, isBlueLight: _isBlueLight),
        '/home': (context) => HomePage(onThemeToggle: _toggleTheme, isBlueLight: _isBlueLight),
        '/register': (context) => const RegisterPage(),
        '/profile': (context) => const ProfilePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/school_info': (context) => const SchoolInfoPage(),
        '/academic': (context) => const AcademicPage(),
        '/announcements': (context) => const AnnouncementsPage(),
      },
    );
  }
}
