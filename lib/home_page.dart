import 'package:deneme/akademik_page.dart';
import 'package:deneme/duyurularveetkinlikler_page.dart';
import 'package:deneme/iletisim_page.dart';

import 'package:flutter/material.dart';
import 'contact_page.dart';
import 'school_info_page.dart';
import 'academic_page.dart';
import 'announcements_page.dart';
import 'aday_ogrenci_page.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onThemeToggle; // Tema değiştirme fonksiyonu
  final bool isBlueLight; // Mavi ışık modunun açık olup olmadığını kontrol eder

  const HomePage({super.key, required this.onThemeToggle, required this.isBlueLight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfam'),
        
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
        actions: [
          IconButton(
            icon: Icon(
              isBlueLight ? Icons.lightbulb : Icons.brightness_6,
              color: isBlueLight ? Colors.orange : null,
            ),
            onPressed: onThemeToggle, // Tema değiştirme fonksiyonunu çağır
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(17.0),
        crossAxisCount: 2,
        crossAxisSpacing: 17.0,
        mainAxisSpacing: 16.0,
        children: [
          _buildGridItem(context, 'Üniversitemiz Hakkında', Icons.info, const ContactPage()),
          _buildGridItem(context, 'İletişim', Icons.contact_mail, const ContactPage()),
          _buildGridItem(context, 'Kampüslerimiz', Icons.school, const universitemizhakkindaPage() as Widget),
          _buildGridItem(context, 'Akademik', Icons.book, const AcademicPage()),
          _buildGridItem(context, 'Duyurular ve Etkinlikler', Icons.announcement, const AnnouncementsPage()),
          _buildGridItem(context, 'Aday Öğrenci', Icons.person, const ProfilePage()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0, color: const Color.fromARGB(255, 17, 11, 188)),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
  
  icon(IconData add_to_home_screen_sharp) {}
}

class universitemizhakkindaPage {
  const universitemizhakkindaPage();
}
