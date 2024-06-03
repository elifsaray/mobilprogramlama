import 'package:flutter/material.dart';
import 'test_sorulari.dart';

class TestlerSayfasi extends StatelessWidget {
  final String ders;
  final List<String> konular;

  TestlerSayfasi({required this.ders, required this.konular});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$ders Testleri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: konular.length,
          itemBuilder: (context, index) {
            String konu = konular[index];
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.quiz, color: Colors.green),
                title: Text(konu),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TestSayfasi(ders: ders, konu: konu),
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

class TestSayfasi extends StatefulWidget {
  final String ders;
  final String konu;

  TestSayfasi({required this.ders, required this.konu});

  @override
  _TestSayfasiState createState() => _TestSayfasiState();
}

class _TestSayfasiState extends State<TestSayfasi> {
  late List<Soru> sorular;
  List<int?> cevaplar = [];

  @override
  void initState() {
    super.initState();
    sorular = TestSorulari.sorular[widget.ders]![widget.konu]!;
    cevaplar = List<int?>.filled(sorular.length, null);
  }

  void _cevabiKontrolEt(int soruIndex, int seciliCevapIndex) {
    setState(() {
      cevaplar[soruIndex] = seciliCevapIndex;
    });
    if (seciliCevapIndex == sorular[soruIndex].dogruCevapIndex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Doğru cevap!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Yanlış cevap.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.ders} - ${widget.konu} Testi'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: sorular.length,
        itemBuilder: (context, index) {
          Soru soru = sorular[index];
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    soru.soruMetni,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  ...List.generate(soru.cevaplar.length, (cevapIndex) {
                    return RadioListTile<int>(
                      title: Text(soru.cevaplar[cevapIndex]),
                      value: cevapIndex,
                      groupValue: cevaplar[index],
                      onChanged: (value) {
                        _cevabiKontrolEt(index, value!);
                      },
                    );
                  }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
