class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> evListesi = [];

  House ev1 = House(1, "Yalı", 420000000);
  House ev2 = House(2, "Villa", 85000000);
  House ev3 = House(3, "Apartman Dairesi", 47000000);

  evListesi.addAll([ev1, ev2, ev3]);

  for (var ev in evListesi) {
    print("Ev ${ev.id}: ${ev.name}, Fiyat: ${ev.price}TL");
  }
}
