import 'dart:async';
import 'dart:io';

void main() {
  stdout.write("İlk tamsayı: ");
  int sayi1 = int.parse(stdin.readLineSync()!);

  stdout.write("İkinci tamsayı: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  print("(3 saniye sonra sonuç gösterilecektir.)");

  Future.delayed(Duration(seconds: 3), () {
    int toplam = sayi1 + sayi2;
    print("$sayi1 ve $sayi2'nin toplamı $toplam");
  });
}
