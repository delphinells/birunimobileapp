import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İletişim'),
        backgroundColor: const Color.fromARGB(255, 55, 53, 186),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildContactItem(
                    icon: Icons.location_on,
                    color: const Color.fromARGB(255, 212, 25, 12),
                    title: 'Adres',
                    subtitle: 'Merkezefendi Mahallesi G/75 Sk. No: 1-3\nZeytinburnu, İstanbul',
                    onTap: () {},
                  ),
                  _buildContactItem(
                    icon: Icons.phone,
                    color: const Color.fromARGB(255, 2, 86, 26),
                    title: 'Telefon',
                    subtitle: '+90 212 416 46 46',
                    onTap: () {},
                  ),
                  _buildContactItem(
                    icon: Icons.email,
                    color: const Color.fromARGB(255, 15, 204, 97),
                    title: 'E-Mail',
                    subtitle: 'info@biruni.edu.tr',
                    onTap: () {},
                  ),
                  _buildContactItem(
                    icon: Icons.web,
                    color: const Color.fromARGB(255, 154, 15, 106),
                    title: 'Web',
                    subtitle: 'https://www.biruni.edu.tr',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: const Color.fromARGB(255, 246, 246, 248)),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}
