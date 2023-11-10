enum Gender {
  male, 
  female, 
  others 
}

void main() {
  for (Gender value in Gender.values) {
    print(value);
  }
}
