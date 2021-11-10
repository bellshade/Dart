import 'dart:io';

void main(List<String> args) {
  File file = File('files/hasil_inputan.txt');
  IOSink writeSink = file.openWrite(mode: FileMode.writeOnlyAppend);

  try {
    while (true) {
      stdout.write('Masukkan kalimat: ');
      String? kata = stdin.readLineSync();

      if (kata != null) {
        if (kata == '') {
          throw Exception('Lempar exception jika kata tidak ada');
        }
        writeSink.write(kata + '\n');
      }
    }
  } catch (e) {
    print(e);
  } finally {
    print('Menutup write');
    writeSink.close();
  }
}
