import 'dart:async';
import 'dart:io';

void main() {
  stdout.write("Tamsayı listesi girin (Boşluk tuşu ile ayırıp, enter tuşu ile sonlandırın): ");
  List<int> sayilar = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  
  Future<List<int>> ikiyleCarp(List<int> sayilar) async {
    List<int> yeniListe = [];
    for (int sayi in sayilar) {
      await Future.delayed(Duration(milliseconds: 1)); 
      yeniListe.add(sayi * 2);
    }
    return yeniListe;
  }

  ikiyleCarp(sayilar).then((yeniListe) {
    print("Yeni Liste: $yeniListe");
  });
}
