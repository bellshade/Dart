import 'dart:io';

class Input {
  jalankan() {
    stdout.write("Masukan nama anda: ");
    String? nama = stdin.readLineSync();
    print("Halo, $nama!");
  }
}
