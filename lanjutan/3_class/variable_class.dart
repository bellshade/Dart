class Hewan {
  String nama;
  // Hewan(this.nama);
  Hewan({required this.nama});
}

void main() {
  /// Default Inisialisasi
  // Hewan hewan = Hewan('Kangguru');

  /// Cascade Operator
  // Hewan hewan = Hewan()..nama = 'Kangguru';

  /// Named Parameter
  Hewan hewan = Hewan(nama: 'Kangguru');

  print(hewan.nama);
}
