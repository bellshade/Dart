# Input

Input adalah teks yang ditulis oleh user yang nantinya akan dibaca oleh program.
Di dalam Dart, kalian bisa melakukan input dengan menggunakan fungsi
[readLineSync()](https:api.dart.dev/stable/1.10.1/dart-io/Stdin/readLineSync.html) yang terdapat  di dalam library `dart:io`.

## Lebih lanjut mengenai `readLineSync`
Fungsi `readLineSync` akan mengembalikan tipe data berupa `String`, jadi jika kalian ingin mendapatkan data dengan tipe data `int` contohnya, kalian
kalian bisa melakukannya dengan mengkonversikan tipe data `String` ke `int` dengan `int.parse(stdin.readLineSync()!)`.
Kalian bisa membaca lebih lanjut mengenai method `int.parse()` di [dokumentasi resmi Flutter](https://api.flutter.dev/flutter/dart-core/int/parse.html).

##  Penggunaan `stdout.write()`
Jika dilihat lebih detail lagi, kalian mungkin akan melihat masalah dari penggunaan statement `print()` yang membuat kursor ke baris berikutnya. Untuk membuat cursor tetap berada di baris yang sama, kalian bisa menggunakan perintah `stdout.write()`.
```dart

import 'dart:io';
 
void main()
{
    stdout.write("Halo, nama saya ");
    print("Budi");
}
```

**Menghasilkan:**
```
Halo, nama saya Budi
```