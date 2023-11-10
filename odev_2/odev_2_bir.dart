class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

void main() {
  Laptop laptop1 = Laptop(1, "ASUS TUF Gaming", 64);
  Laptop laptop2 = Laptop(2, "MONSTER Abra", 16);
  Laptop laptop3 = Laptop(3, "HP Victus", 32);

  print("Laptop ${laptop1.id} name: ${laptop1.name}, RAM: ${laptop1.ram}GB");
  print("Laptop ${laptop2.id} name: ${laptop2.name}, RAM: ${laptop2.ram}GB");
  print("Laptop ${laptop3.id} name: ${laptop3.name}, RAM: ${laptop3.ram}GB");
}
