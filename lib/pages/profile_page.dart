import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Öğrenci Profili',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(''),
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              SizedBox(height: 20),
              Text("İsim Soy isim: Delfin Ölmez", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Bölüm: Bilgisayar Mühendisliği", style: TextStyle(fontSize: 16)),
              Text("Giriş Yılı: 2021", style: TextStyle(fontSize: 16)),
              Text("Mezuniyet Tarihi: 2025", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Akademik Bilgiler", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Sınav Sonuçları", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Card(
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Matematik"),
                  subtitle: Text("Sonuç: 85"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Fizik"),
                  subtitle: Text("Sonuç: 78"),
                ),
              ),
              SizedBox(height: 20),
              Text("Ekstra Bilgiler", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Katıldığı Kulüpler: Yapay Zeka Kulübü, Mühendislik Kulübü", style: TextStyle(fontSize: 16)),
              Text("Staj Deneyimi: Aselsan Şirketi, Yaz 2022", style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
