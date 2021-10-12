import 'dart:io';

// membuat fungsi menghitung usia
int hitungUsia(int tahun) {
  return 2021 - tahun;
}

//membuat fungsi perkenalan
void perkenalan(String nama) {
  print('Haloo.. Nama saya $nama');
}

main() {
  print('Perkenalan');

  //menerima input pengguna berupa tahun lahir dan disimpan di variabel tahun
  stdout.write('Input Tahun Lahir : ');
  int? tahun = int.parse(stdin.readLineSync()!);

  //menerima input nama pengguna dan disimpan di variabel n
  stdout.write('Input Nama : ');
  String? n = stdin.readLineSync()!;

  //garis pembatas
  print('==============');

  // memanggil fungsi hitungUsia dengan parameter tahun (tahun lahir yang diinputkan pengguna) dan akan mengembalikan nilai dengan tipe data int dan disimpan di variabel usia
  int usia = hitungUsia(tahun);

  // memanggil fungsi perkenalan dengan parameter n (nama yang diinputkan pengguna)
  perkenalan(n);

  //mencetak nilai usia
  print('Umur saya $usia');
}
