import 'package:flutter/material.dart';
import 'testler_sayfasi.dart';

class AnaSayfa extends StatelessWidget {
  final Map<String, List<String>> derslerVeKonular = {
    'Coğrafya': ['Yerküre ve Haritalar', 'İklim Bilgisi', 'Nüfus ve Yerleşme'],
    'Matematik': ['Cebir', 'Geometri', 'Olasılık ve İstatistik'],
    'Biyoloji': ['Hücre Bilgisi', 'Genetik ve Evrim', 'Ekosistem'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: derslerVeKonular.keys.length,
          itemBuilder: (context, index) {
            String ders = derslerVeKonular.keys.elementAt(index);
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.book, color: Colors.blue),
                title: Text(ders),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestlerSayfasi(ders: ders, konular: derslerVeKonular[ders]!),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
