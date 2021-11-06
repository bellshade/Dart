# Variabel

Variabel adalah sebuah penyebutan bagaimana sebuah data bisa ditampung dalam memori komputer dan bagaimana memperlakukan sebuah variabel yang dibuat.

## 1. `var`

Kata kunci "var" sebelum penamaan variabel seperti "aku ga peduli menentukan tipe datanya". Jadi saat membuat variabel dengan kata kunci "var" lalu mengisinya dengan String, maka kedepannya variabel otomatis hanya mau menyimpan value bertipe String.

Contoh:
```dart
var sebuahVariabel = 'Hello, World!';
```

## 2. Menentukan tipe datanya

Memberi tipe data sebelum nama variabel, bertujuan unuk memberitahu memastikan bahwa variabel hanya boleh diisi oleh tipe data tertentu.

Contoh:
```dart
// Hanya bisa diisi String
String variabelString = 'wpu';
```

Jika variabel-variabel diatas diberi value dengan tipe data yang berbeda maka akan memberikan sebuah peringatan 'syntax error'.

## 3. Nullable

Dart (versi 2 keatas) memiliki fitur null safety, dimana secara default setiap value dari variabel tidak boleh kosong/null, kecuali jika diberi perintah untuk bisa kosong/null.

Untuk memberitahu sebuah variabel agar bisa kosong/null bisa menggunakan tanda tanya (?) tepat setelah penentuan tipe data

Contoh:
```dart
String? stringBisaNull;
```

## 4. `late`

Jika tidak mau mengisi sebuah value saat pertamakali membuat variabel, bisa menggunakan kata kunci "late" sebelum pendefinisan tipe datanya.

> Jika variabel ini dipanggil sebelum diisikan sebuah value maka akan menghasilkan `error`.

Contoh: 
```dart
late int isiNanti;
isiNanti = 100; // <- mengisi variabel setelah pembuatan variabelnya
```

## 5. `dynamic`

Variabel dengan kata kunci "dynamic" bisa menampung semua tipe data object yang ada di Dart.

> Penggunaan ini sangat berguna jika memang tidak tahu value yang akan datang atau diisikan nantinya. Tapi jika jika memang sudah tahu hanya satu tipe data yang dipakai, maka pakailah variabel dengam 'Tipe Data'

```dart
dynamic variabelDinamis = 'Konnichiwa'; // <- pertama, diisi dengan String
variabelDinamis = 39; // <- lalu diisi dengan integer
```

## 6. `const` dan `final`

Variabel dengan kata kunci `const` dan `final` digunakan untuk menyimpan konstanta atau nilai tetap. Dart mencegah perubahan yang keungkinan terjadi kepada variabel const atau final. `const` dan `final` bisa diletakkan sebelum tipe data atau sebagai pengganti `var`.

Contoh:
```dart
const nilaiConst1 = 5;
const String nilaiConst2 = 'koding';
final nilaiFinal1 = 20.5;
final List<String> nilaiFinal2 = ['Dart', 'Java', 'Python'];
```

Untuk penghitungan hanya bisa menggunakan "const", "final" tidak bisa digunakan untuk operasi penghitungan:
```dart
const pi = 22 / 7;
const jariJari = 7;
const luasLingkaran = pi * (jariJari * jariJari);
```

---

[<< Materi sebelumnya](https://github.com/bellshade/Dart/tree/main/basic/2_tipe_data) | [Materi selanjutnya >>](https://github.com/bellshade/Dart/tree/main/basic/4_operator_dan_logika_aritmatika)