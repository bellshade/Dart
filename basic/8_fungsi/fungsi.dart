import 'dart:io';

// membuat fungsi menghitung usia
int hitungUsia(int tahun) {
  return 2021 - tahun;
}

//membuat fungsi perkenalan
void perkenalan(String nama) {
  print("Haloo.. Nama saya $nama");
}

main() {
  print("Perkenalan");

  //menerima input pengguna berupa tahun lahir
  stdout.write("Input Tahun Lahir : ");
  int? tahun = int.parse(stdin.readLineSync()!);

  //menerima input nama pengguna
  stdout.write("Input Nama : ");
  String? n = stdin.readLineSync()!;

  //garis pembatas
  print("==============");
  // memanggil fungsi hitungUsia
  int usia = hitungUsia(tahun);
  perkenalan(n);

  //mencetak usia
  print("Umur saya $usia");
}
