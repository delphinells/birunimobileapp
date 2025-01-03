import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biruni Üniversitesi Duyurular ve Etkinlikler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnnouncementsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnnouncementsPage extends StatelessWidget {
  final List<Map<String, dynamic>> announcements = [
    {
      "title": "Yeni Araştırma Laboratuvarı Açılışı",
      "date": "2025-01-15",
      "description": "Üniversitemiz yeni bir araştırma laboratuvarını açıyor. Tüm öğrencilerimiz ve akademisyenlerimiz davetlidir.",
      "detail": "Biruni Üniversitesi, bilimsel araştırmaların desteklenmesi amacıyla yeni laboratuvarını 15 Ocak 2025'te açıyor. Açılışa özel sunumlar ve laboratuvar turları yapılacak."
    },
    {
      "title": "Kariyer Günleri 2025",
      "date": "2025-02-20",
      "description": "Kariyer hedeflerinizi belirlemek ve sektör liderleriyle tanışmak için bizimle olun.",
      "detail": "Kariyer Günleri etkinliğimiz, öğrencilerimize iş dünyasının kapılarını aralamak için 20 Şubat 2025'te düzenlenecek. Çeşitli sektörlerden şirketler ve konuşmacılar katılacak."
    },
    {
      "title": "Uluslararası Öğrenci Konferansı",
      "date": "2025-03-05",
      "description": "Dünyanın dört bir yanından öğrencilerle buluşma fırsatı.",
      "detail": "5 Mart 2025'te düzenlenecek olan Uluslararası Öğrenci Konferansımızda global eğitim ve öğrenci işbirlikleri üzerine paneller yapılacak."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Duyurular ve Etkinlikler"),
      ),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          var announcement = announcements[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(announcement['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text("${announcement['date']} - ${announcement['description']}"),
              isThreeLine: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AnnouncementDetailPage(detail: announcement['detail']),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

class AnnouncementDetailPage extends StatelessWidget {
  final String detail;
  const AnnouncementDetailPage({Key? key, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Duyuru Detayı"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(detail, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
