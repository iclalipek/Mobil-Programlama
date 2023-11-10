import 'dart:io';

class UlkeTesti {
  Map<String, String> ulkeler;

  UlkeTesti(this.ulkeler);

  void testiBaslat() {
    int dogruSayisi = 0;

    ulkeler.forEach((ulke, dogruBaslik) {
      stdout.write("$ulke'nin başkenti nedir? ");
      String kullaniciCevap = stdin.readLineSync() ?? "";

      if (dogruBaslik.toLowerCase() == kullaniciCevap.toLowerCase()) {
        print("Doğru!");
        dogruSayisi++;
      } else {
        print("Yanlış. Doğru cevap: $dogruBaslik");
      }
    });

    print("\nTest bitti. Toplam doğru cevap sayısı: $dogruSayisi/${ulkeler.length}");
  }
}

void main() {
  Map<String, String> ulkeler = {
    "Türkiye": "Ankara",
    "İsviçre": "Bern",
    "Belçika": "Brüksel",
    "Romanya": "Bükreş",
    "İrlanda": "Dublin",
    "Küba": "Havana",
    "İspanya": "Madrid",
    "Rusya": "Moskova",
    "Kanada": "Ottawa",
    "Çekya": "Prag",
    "Güney Kore": "Seul",
    "Japonya": "Tokyo",
    "Polonya": "Varşova",
    "Avusturya": "Viyana",
    "Litvanya": "Vilnius",
    "Almanya": "Berlin",
    "Fransa": "Paris",
    "İngiltere": "Londra",
    "Kuzey Makedonya": "Üsküp",
    "Libya": "Trablus",
  };

  UlkeTesti ulkeTesti = UlkeTesti(ulkeler);
  ulkeTesti.testiBaslat();
}
