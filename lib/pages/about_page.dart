import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final Map<String, bool> _isPressed = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Üniversite Hakkında'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildInteractiveCard(context, 'Biruni', BiruniPage()),
            _buildInteractiveCard(context, 'Amaç', AmacPage()),
            _buildInteractiveCard(context, 'Vizyonumuz', VizyonPage()),
            _buildInteractiveCard(context, 'Rektör Mesajı', RektorMesajiPage()),
            _buildInteractiveCard(context, 'Tarihçe', TarihcePage()),
          ],
        ),
      ),
    );
  }

  Widget _buildInteractiveCard(BuildContext context, String title, Widget destinationPage) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => destinationPage)),
      onTapDown: (_) => _changeCardColor(title, true),
      onTapUp: (_) => _changeCardColor(title, false),
      onTapCancel: () => _changeCardColor(title, false),
      child: Card(
        color: _isPressed[title] ?? false ? const Color.fromARGB(255, 233, 237, 239) : const Color.fromARGB(255, 50, 54, 175),
        margin: const EdgeInsets.all(10),
        child: Container(
          height: 150,
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void _changeCardColor(String title, bool isPressed) {
    setState(() {
      _isPressed[title] = isPressed;
    });
  }
}



class BiruniPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Biruni Üniversitesi")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Biruni Üniversitesi, İstanbul'da yer alan bir vakıf üniversitesidir ve 2014 yılında eğitim-öğretime başlamıştır. "
            "Üniversite, özellikle sağlık bilimleri alanında eğitim vermektedir ve altı fakülte ile bir meslek yüksekokulunu bünyesinde barındırmaktadır. "
            "Adını bilim, astronomi, matematik ve tıp alanlarında büyük katkılarda bulunmuş Ebu Reyhan El-Biruni'den alan üniversite, "
            "modern eğitim anlayışıyla donatılmış kampüsü ile öğrencilere çağdaş bir eğitim ortamı sunmayı hedeflemektedir.",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}




class AmacPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Amacımız")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Biruni Üniversitesi olarak amacımız; Kurumun misyon, vizyon ve değerlerine bağlı kalarak; "
            "Sağlık alanında (disiplinler arası branşlar dahil) yüksek kalite ve özgünlüğün sağlanacağı tematik bir üniversite olmak, "
            "Ülkemizin sağlık sorunları üzerine araştırmalar gerçekleştirecek, katma değer oluşturabilecek, yüksek kaliteli araştırmacılar ve "
            "akademisyenler yetiştirmek, 2023 vizyonuna hizmet edecek şekilde, sağlık alanında AR-GE’ye ağırlık verip ülkenin ihtiyaçları çerçevesinde "
            "üretime katkı sağlamaktır.",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}



class VizyonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vizyonumuz")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Vizyon\nAdı gibi iz bırakan öncü bir üniversite olmak.\n\n"
            "Misyon\nEğitime kattığı farklılıklarla nitelikli bireyler yetiştiren, ulusal ve uluslararası düzeyde "
            "özgün bilgi üreten, toplumsal sorunların çözümüne katkı sağlayan yenilikçi ve lider bir üniversite olmaktır.\n\n"
            "Değerler\nÖğrenci Odaklılık\nKalite Kültürü\nEleştirel Düşünme\nYaşam Boyu Öğrenme\nEtik Yaklaşım\n"
            "Farklılıklara Saygı\nToplumsal Sorumluluk",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}




class RektorMesajiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rektörün Mesajı")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Geleceğin bilim insanlarına…\n\n"
            "İsmini dünya bilim tarihinde 'Evrensel Deha' olarak anılan, 11. Yüzyıla adını veren bilim insanı Ebu Reyhan El Biruni’ den "
            "alan Üniversitemizde; Tıp Fakültesi, Diş Hekimliği Fakültesi, Eczacılık Fakültesi, Sağlık Bilimleri Fakültesi, Eğitim "
            "Fakültesi, Mühendislik ve Doğa Bilimleri Fakültesi olmak üzere 6 Fakülte, Lisansüstü Eğitim Enstitüsü ve Meslek Yüksek Okulu "
            "ile hizmet verilmektedir.\n\n"
            "'Bilimin Geleceği' ilkesiyle eğitimine devam eden, öğrencileri ve çalışanları için mutluluk, hoşgörü ve başarı merkezi olmayı "
            "amaçlayan ve hizmetlerinde mükemmelliği hedefleyen üniversitemiz; öğrenmeye ve topluma değer katan, yenilikçi uygulamaları ve "
            "başarıları ile yurt içi ve yurt dışında örnek alınan, adı gibi iz bırakan öncü bir üniversite olma yolundadır. Üniversitemiz, "
            "insanlığın ihtiyacı olan bilgiyi üreten, eleştirel düşünebilen kişisel ve mesleki alanda kendini sürekli yenileyen, etik "
            "değerlere sahip, ulusal ve evrensel sorunlara duyarlı, toplumun değer yargılarına ve farklılıklarına saygılı, problemlere "
            "çözüm üretebilecek yetkinlikte bireyler yetiştirmeyi misyon edinmiştir.\n\n"
            "Türkiye ve dünyanın yarını, bugünün gençliğinin hangi ölçüde 'kaliteli' bir eğitim alacağı ile belirlenecektir. Eğitimde "
            "yeniliklerin, farklılıkların ve kalitenin simgesi olma yolunda olan Üniversitemizde eğitim-öğretimi yeni nesile uygun hale "
            "getirmek amacıyla 'Biruni Derse Hazırlık Metodu', 'Bir Bilgin Ol' yöntemi uygulanmaktadır.\n\n"
            "Sevgili gençler, ülkemizde sağlık meslekleri ile ilgili tüm bölümlerin mevcut olduğu Üniversitemizde eğitim almak için birçok "
            "sebebiniz bulunmaktadır. Öncelikle sizlere İstanbul’un merkezi Topkapı semtinde, tarihi surların karşısında yer alan geniş "
            "sosyal imkanları mevcut kampüs alanı ile güvenli ve nitelikli öğrencilik hayatı sunmaktayız. Büyük bir heyecan ve güçlü bir "
            "akademik kadroyla insanlık ve ülkemiz adına verilen bu hizmetin aktörleri olmanın gururunu, azmini ve heyecanını, verdiğimiz "
            "nitelikli mezunlarımız ile yaşamaktayız.\n\n"
            "Sizleri, geleceğin bilim insanları ve donanımlı meslek üyesi olarak yetiştirecek, konusunda uzman öğretim kadrosuyla, ileri "
            "teknolojiye sahip hastane ve laboratuvarıyla buluşturan öncü bir üniversitede bilimin geleceğini yazmaya eğitim almaya davet "
            "ediyorum.\n\n"
            "Biruni’nin bilime olan tutkusu ve çalışma azminin bizlere verdiği enerji ve heyecan ile sizleri bilimin geleceğini yazmak üzere "
            "Biruni ailesine bekliyorum.\n\n"
            "Sevgi ve Saygılarımla…\n\n"
            "Rektör\n"
            "Prof. Dr. Adnan YÜKSEL",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}


class TarihcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tarihçe")),
      body: SingleChildScrollView( // Ekranı kaydırılabilir yapmak için SingleChildScrollView ekledim.
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Metin için padding eklendi.
          child: Text(
            "Tip, Eczacilik, Astronomi, Matematik, Fizik, Cografya ve Tarih basta olmak uzere "
            "birçok alanda onemli eserler vererek dunya bilim tarihine 'Evrensel Deha' olarak "
            "adini yazdiran Turk bilim insani Ebu Reyhan El-Biruni'den ilham alarak vakif universiteleri "
            "arasinda yerini alan Biruni Universitesi, tamami saglik alaniyla ilgili 6 Fakulte ve 1 Meslek "
            "Yuksekokulu ile 2014-2015 egitim ogretim yili itibariyle akademik faaliyetlerine baslamistir.\n\n"
            "Biruni Universitesi, 27.02.2014 tarihli, 28926 sayili resmi gazetede yayimlanan, 20.02.2014 kabul "
            "tarihli ve 6525 nolu 'Bazi Kanun ve Kanun Hukmunde Kararnamelerde Degisiklik Yapilmasi Hakkinda "
            "Kanun'un 13. maddesi uyarinca; 28/3/1983 tarihli ve 2809 sayili Yuksekogretim Kurumlari Teskilati "
            "Kanunu'na eklenen, Ek Madde 156 kapsaminda kurulmustur.",
            style: TextStyle(fontSize: 16), // Metin boyutu ayarlandı.
          ),
        ),
      ),
    );
  }
}

