import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biruni Üniversitesi Aday Öğrenciler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AdayOgrenci(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AdayOgrenci extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aday Öğrenciler"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hoş Geldiniz!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Biruni Üniversitesi'nde eğitim görmeyi düşünen tüm öğrencilere kapımız açık! Eğitim, keşif ve gelişim yolculuğunuza katkıda bulunmak için buradayız.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              _buildSectionTitle("Programlar ve Fakülteler"),
              _buildSectionContent("Üniversitemiz, çağdaş eğitim anlayışıyla donatılmış çeşitli fakülteler sunar, öne çıkanlar:\n- Tıp Fakültesi\n- Mühendislik Fakültesi\n- İşletme Fakültesi"),
              _buildSectionTitle("Burs ve Finansal Yardım Seçenekleri"),
              _buildSectionContent("Çeşitli burslar ve esnek ödeme planları ile her öğrencinin eğitimine erişimini kolaylaştırıyoruz."),
              _buildSectionTitle("Kampüs Hayatı ve Öğrenci Aktiviteleri"),
              _buildSectionContent("Aktif öğrenci kulüpleri, spor etkinlikleri ve sosyal aktivitelerle dolu dinamik bir kampüs hayatı."),
              _buildSectionTitle("Sıkça Sorulan Sorular (SSS)"),
              _buildSectionContent("Q: Başvuru süreci nasıl işler?\nA: Başvurularımız online olarak yapılmaktadır ve tüm adımlar web sitemizde detaylıca anlatılmaktadır.\nQ: Yabancı uyruklu öğrenciler başvurabilir mi?\nA: Evet, uluslararası öğrenciler başvuruda bulunabilir."),
              _buildSectionTitle("İletişim Bilgileri ve Danışmanlık Hizmetleri"),
              _buildSectionContent("Her türlü sorunuz için danışmanlarımıza [biruniedu] adresinden ulaşabilirsiniz."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(fontSize: 16),
    );
  }
}
