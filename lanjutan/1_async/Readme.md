# Asynchronous Dart

Pada pemrograman Dart terdapat proses **Synchronous** dan **Asynchronous** yang berfungsi mengatur alur eksekusi dari suatu program.

**Synchronous** adalah proses pengesekusian kode secara berurutan.
Sedangkan **Asynchronous** adalah proses pengesekusian yang tidak sesuai urutan penulisan kode yang ada, atau bisa disebut mengeksekusi perintah tanpa menunggu perintah sebelumnya selesai.

Pada kali ini kita hanya berfokus pada **Asynchronous**.
Terdapat 2 _library_ Dart yang membantu kita untuk menulis program secara **Asynchronous**, yaitu `Future` dan `Stream`.

## Future Dart

Jika kalian pernah mempelajari bahasa pemrograman Javascript, pasti tidak asing lagi dengan `Promise`.
Konsep `Promise` dengan `Future` hampir sama yaitu memberikan suatu output yang akan kita terima jika sudah selesai diproses.

Contohnya jika kita ingin mengambil data dari API.
Kita tidak ingin program kita _freeze_ pada saat menunggu data dari API berhasil dipanggil.
Perlu adanya `Future` untuk memberitahu bahwa data tersebut akan ada di **masa depan**.

### Contoh Future

Untuk membuat suatu fungsi menjadi **Asynchronous** kita harus memberi _keyword_ `async` dan me-return fungsi tersebut dengan kelas `Future`, jika fungsi tersebut bertujuan untuk mengembalikan nilai.
Dan jangan lupa kita harus memberi tipe data yang akan dikembalikan pada `Future` tersebut.

```dart
Future<String> callApi() async {
}
```

Didalam fungsi `callApi()` kita akan seolah-olah ingin mengambil data dari API.
Dengan menggunakan fungsi `Future.delayed()` kita akan membuat _delay_ dalam 5 detik.
Keyword `await` disini berfungsi untuk menunggu _delay_ tersebut selesai dan lanjut eksekusi perintah selanjutnya yaitu `return`.

```dart
await Future.delayed(Duration(seconds: 5));

return 'Berhasil mengambil data dari API';
```

Berikut isi perintah yang ada pada fungsi `main()`.
Bisa dilihat kita menunggu data dari API berhasil diambil.

```dart
main(List<String> args) async {
  print('Mulai program');

  print(await callApi());

  print('Akhir program');
}
```

Output dari program diatas seperti berikut.

```dart
Mulai program
Berhasil mengambil data dari API // delay 5 detik
Akhir program
```

Adapun jika kita tidak ingin menunggu data dari API berhasil dipanggil sebagai berikut.
Pada program akan dieksekusi secara **Synchronous** yaitu secara berutan.
Karena fungsi `callApi()` merupakan **Asynchronous**, maka kita menggunakan `then` untuk mendapat data yang delay 5 detik tersebut.

```dart
main(List<String> args) {
  print('Mulai program');

  callApi().then((String data) => print(data));

  print('Akhir program');
}
```

Output dari program diatas seperti berikut.

```dart
Mulai program
Akhir program
Berhasil mengambil data dari API // delay 5 detik
```

## Stream Dart

Konsep `Stream` agak berbeda dengan `Future`.
`Future` mempunyai **sekali** nilai balik jika kita memanggil fungsi tersebut dan nilai tersebut tidak bisa berubah.
Sedangkan `Stream` mempunyai nilai balik yang lebih dari **sekali** dan nilai tersebut bisa berubah sewaktu-waktu.

### Contoh Stream

Sama seperti `Future` kita harus membuat fungsi tersebut me-return sebuah `Stream` dan tetapkan tipe data balikannya.
Pada keyword `async` ditambahkan tanda `*`, serta `return` diganti menjadi `yield`.

Pada fungsi tersebut, kita ingin membuat suatu seperti stopwatch yang akan delay selama 1 detik jika nilai `i` bertambah.

```dart
Stream<String> counter(int max) async* {
  for (int i = 0; i < max; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield 'Detik ke-${i + 1}';
  }
}
```

Berikut isi perintah pada fungsi `main()`.
Pada saat memanggil fungsi `counter` kita harus `listen` atau mendengarkan nilai balik dari fungsi `Stream`.

```dart
main(List<String> args) async {
  print('Mulai program');

  counter(5).listen((counter) => print(counter));

  print('Akhir program');
}
```

Output dari program diatas seperti berikut.
Bisa dilihat output dari fungsi `counter()` berubah-ubah tidak seperti `Future` yang nilai baliknya tidak bisa berubah.

```dart
Mulai program
Akhir program
Detik ke-0
Detik ke-1
Detik ke-2
Detik ke-3
Detik ke-4
```
