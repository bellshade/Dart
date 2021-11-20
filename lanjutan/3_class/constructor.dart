class Hewan {
  // Default constructor
  // Hewan();

  // Const constructor
  const Hewan();

  // Named constructor
  const Hewan.mamalia();
  const Hewan.amfibi();
}

void main() {
  Hewan hewan = const Hewan();
  Hewan mamalia = const Hewan.mamalia();
  Hewan amfibi = const Hewan.amfibi();
  print(hewan);
  print(mamalia);
  print(amfibi);
}
