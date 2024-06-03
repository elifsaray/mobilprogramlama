class Soru {
  final String soruMetni;
  final List<String> cevaplar;
  final int dogruCevapIndex;

  Soru({required this.soruMetni, required this.cevaplar, required this.dogruCevapIndex});
}

class TestSorulari {
  static final Map<String, Map<String, List<Soru>>> sorular = {
    'Coğrafya': {
      'Yerküre ve Haritalar': [
        Soru(
          soruMetni: 'Dünya’nın en büyük okyanusu hangisidir?',
          cevaplar: ['Hint Okyanusu', 'Atlas Okyanusu', 'Pasifik Okyanusu', 'Arktik Okyanusu'],
          dogruCevapIndex: 2,
        ),
        Soru(
          soruMetni: 'Hangi kıta tamamen Güney Yarımküre’dedir?',
          cevaplar: ['Asya', 'Avrupa', 'Afrika', 'Avustralya'],
          dogruCevapIndex: 3,
        ),
        Soru(
          soruMetni: 'Ekvator, hangi iki noktayı birbirine bağlar?',
          cevaplar: ['Kuzey Kutbu ve Güney Kutbu', 'Doğu ve Batı', 'Batı ve Güney', 'Doğu ve Güney'],
          dogruCevapIndex: 0,
        ),
      ],
      'İklim Bilgisi': [
        Soru(
          soruMetni: 'Hangi iklim tipi sürekli yağış alır?',
          cevaplar: ['Muson', 'Ekvatoral', 'Karasal', 'Akdeniz'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'Hangi iklim kuşağında çöl bulunur?',
          cevaplar: ['Tropikal', 'Subtropikal', 'Ilıman', 'Kutup'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'Hangi iklim tipi Akdeniz Bölgesi’nde görülür?',
          cevaplar: ['Karasal', 'Muson', 'Akdeniz', 'Ekvatoral'],
          dogruCevapIndex: 2,
        ),
      ],
      'Nüfus ve Yerleşme': [
        Soru(
          soruMetni: 'Dünyanın en kalabalık ülkesi hangisidir?',
          cevaplar: ['Hindistan', 'Çin', 'ABD', 'Endonezya'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'Şehirlerdeki nüfus yoğunluğunun en önemli nedeni nedir?',
          cevaplar: ['Sanayileşme', 'Tarım', 'Madencilik', 'Turizm'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: 'Kırsal alanlardaki nüfus azalmasının temel nedeni nedir?',
          cevaplar: ['Göç', 'Doğum oranı', 'Ekonomik büyüme', 'Eğitim'],
          dogruCevapIndex: 0,
        ),
      ],
    },
    'Matematik': {
      'Cebir': [
        Soru(
          soruMetni: 'x + 2 = 5 denkleminin çözümü nedir?',
          cevaplar: ['1', '2', '3', '4'],
          dogruCevapIndex: 2,
        ),
        Soru(
          soruMetni: '2x - 3 = 7 denkleminin çözümü nedir?',
          cevaplar: ['5', '6', '4', '7'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: '3x + 4 = 13 denkleminin çözümü nedir?',
          cevaplar: ['2', '3', '4', '5'],
          dogruCevapIndex: 0,
        ),
      ],
      'Geometri': [
        Soru(
          soruMetni: 'Bir üçgenin iç açılarının toplamı kaç derecedir?',
          cevaplar: ['90', '180', '270', '360'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'Bir dikdörtgenin alanı nasıl hesaplanır?',
          cevaplar: ['Kısa Kenar x Uzun Kenar', 'Kenar x Kenar', 'Uzun Kenar x Uzun Kenar', 'Kısa Kenar x Kısa Kenar'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: 'Bir çemberin çevresi nasıl hesaplanır?',
          cevaplar: ['πr^2', '2πr', 'πd', 'r^2'],
          dogruCevapIndex: 1,
        ),
      ],
      'Olasılık ve İstatistik': [
        Soru(
          soruMetni: 'Bir olayın olma olasılığı 0.2 ise, bu olayın olmama olasılığı nedir?',
          cevaplar: ['0.8', '0.2', '0.5', '1.0'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: 'Bir zarın atılmasında 3 gelme olasılığı nedir?',
          cevaplar: ['1/6', '1/3', '1/2', '1/4'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: 'Bir olayın kesin olma olasılığı nedir?',
          cevaplar: ['0', '0.5', '1', '0.75'],
          dogruCevapIndex: 2,
        ),
      ],
    },
    'Biyoloji': {
      'Hücre Bilgisi': [
        Soru(
          soruMetni: 'Hücrede enerji üretiminden sorumlu organel hangisidir?',
          cevaplar: ['Mitokondri', 'Ribozom', 'Lizozom', 'Golgi Cismi'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: 'Bitki hücrelerinde bulunup hayvan hücrelerinde bulunmayan yapı nedir?',
          cevaplar: ['Hücre duvarı', 'Ribozom', 'Mitokondri', 'Lizozom'],
          dogruCevapIndex: 0,
        ),
        Soru(
          soruMetni: 'Protein sentezinde görev alan organel hangisidir?',
          cevaplar: ['Mitokondri', 'Ribozom', 'Lizozom', 'Golgi Cismi'],
          dogruCevapIndex: 1,
        ),
      ],
      'Genetik ve Evrim': [
        Soru(
          soruMetni: 'Genetik biliminin kurucusu kimdir?',
          cevaplar: ['Darwin', 'Mendel', 'Watson', 'Crick'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'DNA’nın çift sarmal modelini kimler bulmuştur?',
          cevaplar: ['Mendel ve Crick', 'Watson ve Crick', 'Darwin ve Watson', 'Mendel ve Watson'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'Evrim teorisini kim ortaya atmıştır?',
          cevaplar: ['Mendel', 'Watson', 'Crick', 'Darwin'],
          dogruCevapIndex: 3,
        ),
      ],
      'Ekosistem': [
        Soru(
          soruMetni: 'Fotosentez işlemini hangi canlılar gerçekleştirir?',
          cevaplar: ['Hayvanlar', 'Bitkiler', 'Mantarlar', 'Bakteriler'],
          dogruCevapIndex: 1,
        ),
        Soru(
          soruMetni: 'Hangi canlı grubu kendi besinini üretebilir?',
          cevaplar: ['Otçullar', 'Yırtıcılar', 'Parazitler', 'Üreticiler'],
          dogruCevapIndex: 3,
        ),
        Soru(
          soruMetni: 'Hangi ekosistem, dünyanın en fazla biyolojik çeşitliliğine sahiptir?',
          cevaplar: ['Çöl', 'Tundra', 'Yağmur Ormanları', 'Bozkır'],
          dogruCevapIndex: 2,
        ),
      ],
    },
  };
}
