# Exception Dart

Exception adalah cara kita menangani error Runtime.
Berbeda dengan error pada saat kita ngoding, yang biasanya IDE memberi tau kita bahwa lupa memasukkan titik koma atau pun salah dalam penulisan variable.
Disebut error Runtime karena pada dasarnya error ini hanya muncul ketika program dijalankan.

Contohnya seperti kita ingin mengambil data dari API Server, akan tetapi server sedang down yang mengakibatkan data tidak bisa diambil dan _status code_ yang diterima adalah 500.
Hal tersebut bisa membuat aplikasi yang sedang berjalan **Force Close** karena error tidak ditangani.

Berikut beberapa implementasi dari Exception pada pemrograman Dart:

- [Throw](#throw)
- [Try Catch](#try-catch)
- [Try On Catch](#try-on-catch)
- [Try Catch Finally](#try-catch-finally)

## Throw

Fungsi throw adalah untuk _melempar_ sebuah Exception.
Biasanya penggunaan throw dibarengi dengan perkondisian, yang mana jika sebuah kondisi terpenuhi maka Exception akan dilempar.

```dart
void main(List<String> args) {
  int number = 6;

  if (number % 2 == 0) {
    throw Exception('Bilangan genap');
  }

  print('Baris terakhir kode');
}
```

Dari program diatas jika `number` bernilai bilangan genap, maka program akan error.

```bash
Unhandled exception:
Exception: Bilangan genap
#0      main (file:///e:/Bellshade/Dart/lanjutan/2_exception/throw.dart:5:5)
#1      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:281:32)
#2      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
```

## Try Catch

Fungsi dari `Try Catch` adalah untuk menangkap sebuah error.
Jika sebuah baris kode didalam blok `try` mengandung sebuah error, maka error tersebut akan di _tangkap_ diblok `catch`.
Adapun jika baris kode tersebut diluar blok `try` maka program error dan tidak akan dihandle.

```dart
void main(List<String> args) {
  int number = 6;

  try {
    if (number % 2 == 0) {
      throw Exception('Bilangan genap');
    }
  } catch (e) {
    print(e);
  }

  print('Baris terakhir kode');
}
```

Hasil dari program diatas sebagai berikut dan exception yang dilempar jika `number` bernilai genap telah ditangkap pada blok `catch`.

```bash
Exception: Bilangan genap
Baris terakhir kode
```

## Try On Catch

Fungsi blok `on` adalah menspesifikasikan jenis exception yang terjadi.
Jika tidak memakai `on` kita bisanya memakai perkondisian `if else`, karena hal tersebut membuat _Boilerplate_ code.

Contoh menggunakan `if else`.

```dart
void main(List<String> args) {
  int number = 5;

  try {
    if (number % 2 == 0) {
      throw Exception('Bilangan genap');
    } else {
      throw UnimplementedError('Bilangan ganjil');
    }
  } catch (e) {
    if (e is Exception) {
      print('Tertangkap di Exception - $e');
    } else {
      print('Tertangkap di UnimplementedError - $e');
    }
  }

  print('Baris terakhir kode');
}
```

Hal tersebut bisa dipangkas menggunakan `on`.

```dart
try {
  if (number % 2 == 0) {
    throw Exception('Bilangan genap');
  } else {
    throw UnimplementedError('Bilangan ganjil');
  }
} on Exception catch (e) {
  print('Tertangkap di Exception - $e');
} on UnimplementedError catch (e) {
  print('Tertangkap di UnimplementedError - $e');
}
```

## Try Catch Finally

Pada blok `finally` adalah tempatnya kode yang akan dieksekusi jika terjadi error ataupun tidak.
Biasanya penggunaan dari `finally` untuk menutup koneksi ke database, menutup file yang sudah dibaca, dll.

Seperti contoh program sederhana yang mana akan looping terus menerus dengan menerima inputan dari User.<br/>
Program akan berhenti jika User tidak mengetikkan sesuatu dengan cara melemparkan sebuah Exception.

```dart
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
```

Program akan membuka sebua file dengan path `files/hasil_inputan.txt`, jika file tersebut tidak ada maka Dart dengan sendirinya akan membuat file tersebut.<br/>
Dari variabel `file` kita panggil fungsi `openWrite` untuk bisa menulis kedalam file tersebut dengan mode `writeOnlyAppend` yang artinya **hanya tulish dan tambahkan dibaris terakhir**

```dart
File file = File('files/hasil_inputan.txt');
IOSink writeSink = file.openWrite(mode: FileMode.writeOnlyAppend);
```

Jika program dijalankan akan selalu menerima input sampai user tidak mengetikkan apapun.

```bash
Masukkan kalimat: Hai
Masukkan kalimat: Semoga harimu menyenangkan
Masukkan kalimat:
Exception: Lempar exception jika kata tidak ada
Menutup write
```

Bisa dilihat pada blok `catch` menerima exception yang dilempar oleh `throw` dan baris kode untuk menutup penulisan file pada blok `finally` tetap tereksekusi.
