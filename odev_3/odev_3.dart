import 'dart:math';

int? generateRandom() {
  double rastgeleDeger = Random().nextDouble();

  if (rastgeleDeger < 0.5) {
    return 100;
  } 
  else {
    return null;
  }
}

void main() {
  int? rastgeleDeger = generateRandom();

  int status = rastgeleDeger ?? 0;

  print('Rastgele Değer: $rastgeleDeger');
  print('Durum: $status');
}
