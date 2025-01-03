import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biruni Üniversitesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AkademikPage(),
      debugShowCheckedModeBanner: false, // Debug etiketi kaldırılıyor
    );
  }
}

class AkademikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akademik"),
        backgroundColor: const Color.fromARGB(255, 253, 252, 254),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildAcademicCard(context, "Fakülteler", FakultelerPage()),
            SizedBox(height: 20),
            _buildAcademicCard(context, "Lisansüstü", LisansustuPage()),
            SizedBox(height: 20),
            _buildAcademicCard(context, "Meslek Yüksekokulu", MeslekYuksekokuluPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildAcademicCard(BuildContext context, String title, Widget destinationPage) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => destinationPage)),
      child: Card(
        color: const Color.fromARGB(255, 38, 46, 205), // Kart rengi
        child: Container(
          width: 300,  // Kart genişliği
          padding: EdgeInsets.all(16),  // İç boşluk
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}



class FakultelerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fakülteler"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Diş Hekimliği Fakültesi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Eczacılık Fakültesi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Eğitim Fakültesi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Mühendislik ve Doğa Bilimleri Fakültesi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Sağlık Bilimleri Fakültesi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("Tıp Fakültesi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}




class LisansustuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lisansüstü Programlar"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lisansüstü Programlar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Biruni Üniversitesi, çeşitli alanlarda yüksek lisans ve doktora programları sunmaktadır. Programlar, akademik mükemmelliği ve araştırma odaklı eğitimi ile tanınır.", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Mevcut Lisansüstü Programlar:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Yüksek Lisans Programları", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("- Klinik Psikoloji Yüksek Lisans Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text("- Moleküler Biyoloji ve Genetik Yüksek Lisans Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text("- Fizik Tedavi ve Rehabilitasyon Yüksek Lisans Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text("- Diğer Sağlık Bilimleri Yüksek Lisans Programları", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Doktora Programları", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("- Sağlık Bilimleri Doktora Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Daha fazla bilgi ve başvuru detayları için Biruni Üniversitesi'nin lisansüstü eğitim web sayfasını ziyaret edin.", style: TextStyle(fontSize: 16, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}




class MeslekYuksekokuluPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meslek Yüksekokulu"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meslek Yüksekokulu", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                "Biruni Üniversitesi Meslek Yüksekokulu, öğrencilere sağlık ve teknik alanlarda uygulamalı eğitim fırsatları sunmaktadır. "
                "Programlar, teorik bilgilerin yanı sıra yoğun pratik uygulamalar içerir ve mezunlar iş hayatına hızlı bir şekilde adapte olabilmektedir.",
                style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Mevcut Programlar:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Anestezi Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text("Tıbbi Görüntüleme Teknikleri Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text("Tıbbi Laboratuvar Teknikleri Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),
              Text("Diş Protez Teknolojisi Programı", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Daha fazla bilgi ve başvuru detayları için Biruni Üniversitesi'nin Meslek Yüksekokulu web sayfasını ziyaret edin.", style: TextStyle(fontSize: 16, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}

