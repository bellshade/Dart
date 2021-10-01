/// # Input (masukan)
///
/// Input adalah teks yang ditulis oleh user yang nantinya akan dibaca oleh program.
/// Di dalam Dart, kalian bisa melakukan input dengan menggunakan fungsi
/// [readLineSync()](https://api.dart.dev/stable/1.10.1/dart-io/Stdin/readLineSync.html) yang terdapat  di dalam library `dart:io`.
///
/// Berikut adalah contoh program sederhana yang menampilkan nama yang sudah diinputkan oleh user.

import 'dart:io';

void main() {
  print("Masukan nama anda: ");
  String? nama = stdin.readLineSync();
  print("Halo, $nama!");
}

/// Bisa dilihat di program diatas bahwa jika kita memasukan nama "Budi", maka keluaran (output) yang dihasilkan adalah "Halo, Budi!".
/// Ini bisa terjadi karena kita menggunakan perintah `readLineSync()` yang secara sinkron (synchronously) membaca satu baris dari **stdin**.
///
/// **stdin** atau yang biasa disebut dengan _standard input_ adalah sebuah class yang memungkinkan sistem untuk
/// melakukan pembacaan secara sinkron (synchronous) dan asinkron (asynchronous) dari input stream.
///
/// Fungsi `readLineSync` akan mengembalikan tipe data berupa `String`, jadi jika kalian ingin mendapatkan data dengan tipe data `int` contohnya, kalian
/// kalian bisa melakukannya dengan mengkonversikan tipe data `String` ke `int` dengan `int.parse(stdin.readLineSync()!)`.
/// Kalian bisa membaca lebih lanjut mengenai method `int.parse()` di [dokumentasi resmi Flutter](https://api.flutter.dev/flutter/dart-core/int/parse.html).
