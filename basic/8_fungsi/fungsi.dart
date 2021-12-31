import 'dart:io';

// membuat fungsi menghitung usia
int hitungUsia(int tahun) {
  return 2021 - tahun;
}

//membuat fungsi perkenalan
void perkenalan(String nama) {
  print('Haloo.. Nama saya $nama');
}

/* 
 *  Jenis Parameter
 */

// Positional Parameter
void pembagian1(nilai1, nilai2) {
  print(nilai1 / nilai2);
}

// Named Parameter
void pembagian2({int? nilai1, int? nilai2}) {
  print(nilai1! / nilai2!);
}

// Optional Parameter
void penjumlahan(int nilai1, int nilai2, [int? nilai3]) {
  if (nilai3 != null) {
    print(nilai1 + nilai2 + nilai3);
  } else {
    print(nilai1 + nilai2);
  }
}

// Required Parameter
void pembagian3({required int nilai1, required int nilai2}) {
  print(nilai1 / nilai2);
}

main() {
  // print('Perkenalan');

  // //menerima input pengguna berupa tahun lahir dan disimpan di variabel tahun
  // stdout.write('Input Tahun Lahir : ');
  // int? tahun = int.parse(stdin.readLineSync()!);

  // //menerima input nama pengguna dan disimpan di variabel n
  // stdout.write('Input Nama : ');
  // String? n = stdin.readLineSync()!;

  // //garis pembatas
  // print('==============');

  // // memanggil fungsi hitungUsia dengan parameter tahun (tahun lahir yang diinputkan pengguna) dan akan mengembalikan nilai dengan tipe data int dan disimpan di variabel usia
  // int usia = hitungUsia(tahun);

  // // memanggil fungsi perkenalan dengan parameter n (nama yang diinputkan pengguna)
  // perkenalan(n);

  // //mencetak nilai usia
  // print('Umur saya $usia');
  
  // Positional Parameter
  pembagian1(4, 2);

  // Named Parameter
  pembagian2(nilai2: 2, nilai1: 4);

  // Optional Parameter
  penjumlahan(4, 2);
  penjumlahan(4, 2, 4);

  // Required Parameter
  pembagian3(nilai2: 2, nilai1: 4);
}