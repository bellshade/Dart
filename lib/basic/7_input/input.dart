import 'dart:io';

class Input {
  jalankan() {
    print("Masukan nama anda: ");
    String? nama = stdin.readLineSync();
    print("Halo, $nama!");
  }
}
