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
Perlu adanya `Future` untuk memberitahu bahwa data tersebut akan datang dari **masa depan**.

### Contoh Future

Untuk membuat suatu fungsi menjadi **Asynchronous** kita harus memberi _keyword_ `async` dan me-_return_ fungsi tersebut dengan kelas `Future`. Dan jangan lupa kita harus memberi tipe data yang akan dikembalikan pada `Future` tersebut.

```dart
Future<String> _panggilFuture() async {
  ...
}
```

Didalam fungsi `_panggilFuture()` kita akan seolah-olah ingin menunggu chat dari seseorang dengan menggunakan fungsi `Future.delayed()` kita akan membuat _delay_ dalam 3 detik.

Keyword `await` disini berfungsi untuk menunggu _delay_ tersebut selesai dan lanjut eksekusi perintah selanjutnya yaitu `return`.

```dart
  await Future.delayed(Duration(seconds: 3));

  return 'B: Aku datang!';
```

Berikut isi perintah yang ada pada fungsi `_contohAsyncAwait()`.
Bisa dilihat kita menunggu chat yang datang dari seseorang, yang mana menunggu chat datang terlebih dahulu lalu membalasnya dengan segera.

```dart
void _contohAsyncAwait() async {
  print('A: Aku berangkat...');

  print(await _panggilFuture()); // memanggil future menggunakan await

  print('A: Aku juga baru datang!');
}
```

Output dari program diatas seperti berikut.

```shell
A: Aku berangkat...
B: Aku datang!            // delay 3 detik
A: Aku juga baru datang!  // setelah delay selesai
```

Adapun jika kita tidak ingin menunggu data dari Future berhasil dipanggil terlebih dahulu maka program akan dieksekusi secara **Synchronous** yaitu secara berutan dengan menggunakan `.then` pada Future yang dipanggil.

Metode ini akan membuat baris kode yang ada setelah pemanggilan Future akan dijalankan secara berurutan, meskipun Future yang dipanggil sebelumnya belum selesai.

```dart
void _contohAsyncThen() {
  print('Contoh memanggil future menggunakan .then:');
  print('A: Kamu sampai mana?');

  _panggilFuture().then((String data) {
    print(data);
  }); // memanggil future menggunakan .then

  print('A: Lama banget dia...');
}
```

Output dari program diatas seperti berikut.

```shell
A: Kamu sampai mana?
A: Lama banget dia... // melewati future yang sedang delay
B: Aku datang!        // future datang terlambat 3 detik
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
