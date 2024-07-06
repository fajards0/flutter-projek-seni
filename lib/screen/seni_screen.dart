import 'package:flutter/material.dart';
import 'detail_seni_screen.dart';

class ListSeniScreen extends StatelessWidget {
  final List<Map<String, dynamic>> SeniData = [
    {
      "nama": "Wayang Kulit",
      "kota": "Pulau Jawa",
      "image": "assets/images/wayangkulit.jpg",
      "gallery": [
        "assets/images/wayangkulit1.jpg",
        "assets/images/wayangkulit2.jpg",
        "assets/images/wayangkulit3.jpg"
      ],
      "desc":
          "Wayang Kulit adalah Pertunjukan boneka kulit dengan cerita-cerita epik seperti Ramayana dan Mahabharata, sering disertai dengan gamelan."
    },
    {
      "nama": "Batik",
      "kota": "Pulau Jawa",
      "image": "assets/images/batik.jpg",
      "gallery": [
        "assets/images/batik1.jpg",
        "assets/images/batik2.jpg",
        "assets/images/batik3.jpg"
      ],
      "desc":
          "Batik adalah Seni membatik kain dengan pola-pola khas Indonesia, seperti motif parang, kawung, atau mega mendung."
    },
    {
      "nama": "Tari",
      "kota": "Di berbagai daerah di seluruh nusantara",
      "image": "assets/images/tari.jpg",
      "gallery": [
        "assets/images/tari1.jpg",
        "assets/images/tari2.jpg",
        "assets/images/tari3.jpg"
      ],
      "desc":
          "Seni Tari adalah Seperti Tari Kecak dari Bali, Tari Saman dari Aceh, atau Tari Piring dari Minangkabau."
    },
    {
      "nama": "Lukis",
      "kota": "Di berbagai peradaban kuno di seluruh dunia",
      "image": "assets/images/lukis.jpg",
      "gallery": [
        "assets/images/lukis1.jpg",
        "assets/images/lukis2.jpg",
        "assets/images/lukis3.jpg"
      ],
      "desc":
          "Seni lukis adalah bentuk ekspresi visual yang menggunakan medium seperti kanvas, kertas, atau dinding untuk menciptakan gambar atau lukisan dengan menggunakan berbagai bahan seperti cat minyak, cat air, cat akrilik, tinta, atau pigmen lainnya. Seni lukis bisa mencakup berbagai gaya dan teknik, dari representasional (realistis) hingga abstrak."
    },
    {
      "nama": "Musik",
      "kota": "Di berbagai negara di seluruh dunia",
      "image": "assets/images/musik.jpg",
      "gallery": [
        "assets/images/musik1.jpg",
        "assets/images/musik2.jpg",
        "assets/images/musik3.jpg"
      ],
      "desc":
          "Seni musik adalah bentuk ekspresi kreatif yang menggunakan suara, ritme, melodi, harmoni, dan berbagai elemen lain untuk menciptakan komposisi yang memiliki nilai estetika dan emosional. Seni musik melibatkan berbagai aspek, termasuk penciptaan, penampilan, dan penerimaan oleh pendengarnya."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Seni'),
        backgroundColor: Color.fromARGB(255, 255, 200, 0),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: SeniData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailSeniScreen(
                        nama: SeniData[index]["nama"],
                        kota: SeniData[index]["kota"],
                        image: SeniData[index]["image"],
                        gallery: SeniData[index]["gallery"],
                        desc: SeniData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(SeniData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    SeniData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
