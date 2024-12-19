import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(255, 91, 132, 155),
    );
    return MaterialApp(
      title: 'Biruni Üniversitesi',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

// Giriş Ekranı
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_usernameController.text == "admin" && _passwordController.text == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Hata"),
          content: const Text("Kullanıcı adı veya şifre hatalı."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Tamam"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biruni Üniversitesi'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hoş Geldiniz!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Giriş Yap'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Şifremi Unuttum',
                  style: TextStyle(color: Color.fromARGB(255, 175, 46, 50)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Ana Sayfa
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Ana Sayfa'), centerTitle: true, backgroundColor: const Color.fromARGB(255, 200, 200, 200)),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          final items = [
            {'icon': Icons.info, 'label': 'Hakkında', 'page': const AboutPage()},
            {'icon': Icons.map, 'label': 'Kampüs Haritası', 'page': const CampusMapPage()},
            {'icon': Icons.event, 'label': 'Etkinlikler', 'page': const EventsPage()},
            {'icon': Icons.book, 'label': 'Programlar', 'page': const ProgramsPage()},
            {'icon': Icons.contact_mail, 'label': 'İletişim', 'page': const ContactPage()},
            {'icon': Icons.settings, 'label': 'Ayarlar', 'page': const SettingsPage()},
          ];
          final item = items[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item['page'] as Widget),
              );
            },
            borderRadius: BorderRadius.circular(16),
            splashColor: Colors.blue,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon'] as IconData, size: 40, color: Colors.indigo),
                  const SizedBox(height: 8),
                  Text(
                    item['label'] as String,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Sayfa Şablonları
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Hakkında", "Biruni Üniversitesi hakkında bilgiler.");
  }
}

class CampusMapPage extends StatelessWidget {
  const CampusMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Kampüs Haritası", "Kampüs içerisindeki bina ve olanakların haritası.");
  }
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Etkinlikler", "Üniversitedeki etkinlikler ve duyurular.");
  }
}

class ProgramsPage extends StatelessWidget {
  const ProgramsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Akademik Programlar", "Üniversitenin sunduğu akademik programlar.");
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "İletişim", "Üniversite ile iletişime geçmek için gerekli bilgiler.");
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Ayarlar", "Uygulama ayarlarını değiştirin.");
  }
}

// Basit Sayfa Yapıcı
Widget buildSimplePage(BuildContext context, String title, String content) {
  return Scaffold(
    appBar: AppBar(title: Text(title)),
    body: Center(
      child: Text(
        content,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
