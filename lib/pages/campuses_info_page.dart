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
      home: CampusesInfoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CampusesInfoPage extends StatelessWidget {
  const CampusesInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return KampuslerimizPage();
  }
}

class KampuslerimizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kampüslerimiz"),
        backgroundColor: const Color.fromARGB(255, 251, 251, 252),
      ),
      backgroundColor: const Color.fromARGB(255, 251, 251, 252),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildKampusCard(context, "Ana Kampüs", const Color.fromARGB(255, 66, 43, 236)!, NormalKampusPage()),
            SizedBox(height: 20),
            _buildKampusCard(context, "Teknopark Kampüs", const Color.fromARGB(255, 66, 43, 236)!, TeknoparkKampusPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildKampusCard(BuildContext context, String kampusName, Color color, Widget destinationPage) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => destinationPage)),
      child: Card(
        color: color,
        child: Container(
          width: 300,
          padding: EdgeInsets.all(16),
          child: Text(
            kampusName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class NormalKampusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Kampüs"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ana Kampüs",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Biruni Üniversitesi Ana Kampüsü, İstanbul'un merkezi konumlarından biri olan Topkapı'da yer almaktadır. "
              "Kampüs, modern sınıfları, kapsamlı kütüphanesi ve ileri teknoloji laboratuvarları ile donatılmıştır.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Adres: Topkapı, İstanbul, Türkiye",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}

class TeknoparkKampusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teknopark Kampüs"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context). pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Teknopark Kampüs",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Teknopark Kampüs, bir zamanlar yalnızca bir kız yurdu olarak hizmet verirken, şu anda hem kız yurdu hem de "
              "teknoloji parkı olarak faaliyet göstermektedir. Kampüs, yenilikçi girişimlere ev sahipliği yapmakta ve "
              "üniversitenin Ar-Ge çalışmalarının merkez üssü olarak işlev görmektedir.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Adres: Teknopark, İstanbul, Türkiye",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
