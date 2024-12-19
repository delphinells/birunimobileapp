import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
        
        scaffoldBackgroundColor: const Color.fromARGB(255, 91, 132, 155),
      );
    return MaterialApp(
      title: 'Biruni Üniversitesi',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// Giriş Ekranı
class LoginPage extends StatefulWidget {
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
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Hata"),
          content: Text("Kullanıcı adı veya şifre hatalı."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Tamam"),
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
        title: Text('Biruni Üniversitesi'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hoş Geldiniz!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
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
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _login,
                child: Text('Giriş Yap'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Şifremi Unuttum',
                  style: TextStyle(color: const Color.fromARGB(255, 175, 46, 50)),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 200, 200, 200)
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          final items = [
            {'icon': Icons.info, 'label': 'Hakkında', 'page': AboutPage()},
            {'icon': Icons.map, 'label': 'Kampüs Haritası', 'page': CampusMapPage()},
            {'icon': Icons.event, 'label': 'Etkinlikler', 'page': EventsPage()},
            {'icon': Icons.book, 'label': 'Programlar', 'page': ProgramsPage()},
            {'icon': Icons.contact_mail, 'label': 'İletişim', 'page': ContactPage()},
            {'icon': Icons.settings, 'label': 'Ayarlar', 'page': SettingsPage()},
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
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon'] as IconData, size: 40, color: Colors.indigo),
                  SizedBox(height: 8),
                  Text(
                    item['label'] as String,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Hakkında", "Biruni Üniversitesi hakkında bilgiler.");
  }
}

class CampusMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Kampüs Haritası", "Kampüs içerisindeki bina ve olanakların haritası.");
  }
}

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Etkinlikler", "Üniversitedeki etkinlikler ve duyurular.");
  }
}

class ProgramsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "Akademik Programlar", "Üniversitenin sunduğu akademik programlar.");
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildSimplePage(context, "İletişim", "Üniversite ile iletişime geçmek için gerekli bilgiler.");
  }
}

class SettingsPage extends StatelessWidget {
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
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
