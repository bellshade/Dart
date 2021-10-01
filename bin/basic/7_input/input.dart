import 'dart:io';

void main() {
  print("Masukan nama anda: ");
  String? nama = stdin.readLineSync();
  print("Halo, $nama!");
}