class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  // Getter
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  // Setter
  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

void main() {
  // Üç adet Camera nesnesi oluşturma
  Camera kamera1 = Camera(1, 'CANON', 'Siyah', 25399);
  Camera kamera2 = Camera(2, 'SONY', 'Siyah', 63449);
  Camera kamera3 = Camera(3, 'NIKON', 'Siyah', 38899);

  // Detayları ekrana yazdırma
  print('Kamera ${kamera1.id}: Marka: ${kamera1.brand}, Renk: ${kamera1.color}, Fiyat: ${kamera1.price}TL');
  print('Kamera ${kamera2.id}: Marka: ${kamera2.brand}, Renk: ${kamera2.color}, Fiyat: ${kamera2.price}TL');
  print('Kamera ${kamera3.id}: Marka: ${kamera3.brand}, Renk: ${kamera3.color}, Fiyat: ${kamera3.price}TL');
}
