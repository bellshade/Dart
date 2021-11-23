class Hewan {
  static String nama = 'Kangguru';

  static void panggilNama() {
    print(nama);
  }

  void metode() {
    print('ini adalah metode');
  }
}

void fungsi() {
  print('Ini adalah fungsi');
}

void main() {
  Hewan hewan = Hewan();

  hewan.metode();
  fungsi();

  Hewan.panggilNama();
}
