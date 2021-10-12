import 'dart:io';

main(List<String> args) {
  stdout.write('Masukan nama anda: ');
  String? nama = stdin.readLineSync();
  print('Halo, $nama!');
}
