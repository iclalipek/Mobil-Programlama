class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  Cat kedi1 = Cat(1, "Ankara kedisi", "Beyaz", "Miyav");
  Cat kedi2 = Cat(2, "Siyam kedisi", "Kahverengi/Krem", "Miyav");
  print("Kedi ${kedi1.id}: ${kedi1.name}, Renk: ${kedi1.color}, Ses: ${kedi1.sound}");
  print("Kedi ${kedi2.id}: ${kedi2.name}, Renk: ${kedi2.color}, Ses: ${kedi2.sound}");
}
