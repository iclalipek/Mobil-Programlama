import 'dart:io';

void main() {
  do {
    print("İşlem tipini seçiniz:");
    print("1- Toplama");
    print("2- Çıkarma");
    print("3- Çarpma");
    print("4- Bölme");
    print("0- Çıkış");

    int secilenIslem = int.parse(stdin.readLineSync()!);

    if (secilenIslem == 0) {
      print("Programdan çıkılıyor.");
      break;
    }
      else if (secilenIslem < 1 || secilenIslem > 4) {
      print("Geçersiz işlem tipi.");
      continue;
    }

    print("Parametreleri giriniz:");

    print("İlk sayı:");
    double parametre1 = double.parse(stdin.readLineSync()!);

    print("İkinci sayı:");
    double parametre2 = double.parse(stdin.readLineSync()!);

    switch (secilenIslem) {
      case 1:
        toplama(parametre1, parametre2);
        break;
      case 2:
        cikarma(parametre1, parametre2);
        break;
      case 3:
        carpma(parametre1, parametre2);
        break;
      case 4:
        bolme(parametre1, parametre2);
        break;
    }
  } 
  while (true);
}

void toplama(double parametre1, double parametre2) {
  double sonuc = parametre1 + parametre2;
  print("Toplama Sonucu: $sonuc");
}

void cikarma(double parametre1, double parametre2) {
  double sonuc = parametre1 - parametre2;
  print("Çıkarma Sonucu: $sonuc");
}

void carpma(double parametre1, double parametre2) {
  double sonuc = parametre1 * parametre2;
  print("Çarpma Sonucu: $sonuc");
}

void bolme(double parametre1, double parametre2) {
  if (parametre2 != 0) {
    double sonuc = parametre1 / parametre2;
    print("Bölme Sonucu: $sonuc");
  } else {
    print("Bölme işlemi sıfıra bölünemez.");
  }
}

