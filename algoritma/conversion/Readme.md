# Conversion

Pada dunia pemrograman tidak asing lagi mendengar sebutan Binary atau yang disebut juga bilangan Biner.
Sistem bilangan yang merupakan dasar dari semua sistem digital saat ini.
Bilangan biner hanya terdiri dari 2 simbol yaitu 0 dan 1.
Pada pengelompokan bilangan biner dalam dunia komputer selalu berjumlah 8, dengan istilah **1 Byte/8 bit**.

Contoh dari bilangan biner adalah 10011100

## Daftar isi

- [Binary to decimal](#binary-to-decimal)
- [Decimal to binary](#decimal-to-binary)
- [Binary to text](#binary-to-text)
- [Text to binary](#text-to-binary)

## Binary to decimal

Konversi dari biner ke angka desimal menggunakan cara mengeksponenkan angka 2 berdasarkan jumlah dari bilangan biner.

Rumus = (2<sup>n</sup>)

Contohnya 111001.

| Biner   | 1             | 1             | 1             | 0             | 0             | 1             |
| ------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Desimal | 2<sup>5</sup> | 2<sup>4</sup> | 2<sup>3</sup> | 2<sup>2</sup> | 2<sup>1</sup> | 2<sup>0</sup> |

1110001 = 1 x 2<sup>5</sup> + 1 x 2<sup>4</sup> + 1 x 2<sup>3</sup> + 0 x 2<sup>2</sup> + 0 x 2<sup>1</sup> + 1 x 2<sup>0</sup> = 57

Implementasi program.

Pada fungsi `binaryToDecimal()` menerima parameter berupa `String` biner.
Untuk memudahkan perhitungan, ubah `String` menjadi `List` dengan menggunakan fungsi yang ada pada object `String` yaitu `split('')`.

```dart
List<String> binaryList = binaries.split(''); // ['1', '1', '1', '0', '0', '0', '1']
```

Setelah dikonversi menjadi `List`, kita harus me-reverse list tersebut.
Hal tersebut diperlukan karena kita akan mengeksponenkan angka 2 menggunakan index.
Dan jangan lupa kita harus mengubah hasil yang telah di-reverse kembali menjadi list, karena nilai balik dari `reversed` adalah `Iterable`.

```dart
List<String> binaryListReversed = binaryList.reversed.toList(); // ['1', '0', '0', '0', '1', '1', '1']
```

Looping list tersebut dan mulai perhitungan untuk mendapatkan nilai desimal pada sebuah bilangan biner.

Untuk mengeksponenkan bilangan pada pemrograman Dart, kita hanya perlu mengimport library `dart:math` dan menggunakan fungsi `pow()`.
Karena kita perlu bilangan biner bertipe data `int` untuk dikalikan dengan hasil eksponen, maka perlu ada parsing.

```dart
for (int index = 0; index < binaryListReversed.length; index++) {
  int binary = int.parse(binaryListReversed[index]);

  result += binary * math.pow(2, index).toInt();
}
```

## Decimal to binary

Untuk konversi desimal ke biner agak sedikit berbeda.

Berikut langkahnya.

1. Bagi angka dengan 2.
2. Dapatkan hasil bagi bilangan untuk iterasi selanjutnya.
3. Dapatkan sisa bagi untuk **digit biner**.
4. Ulangi langkah tersebut sampai hasil bagi sama dengan 0.

Contoh konversi angka 13.

| Dibagi 2 | Hasil bagi | Sisa bagi (Biner) | Iterasi |
| -------- | ---------- | ----------------- | ------- |
| 13/2     | 6          | 1                 | 0       |
| 6/2      | 3          | 0                 | 1       |
| 3/2      | 1          | 1                 | 2       |
| 1/2      | 0          | 1                 | 3       |

Maka bilangan biner dari 13 adalah 1101.

Implementasi program.

Pada fungsi `decimalToBinary()` menerima input sebuah tipe data `int`.
Kita harus menginisiasi nilai `quotient` atau hasil bagi yang berfungsi sebagai penanda.

```dart
int quotient = decimal;
```

Setelah itu looping dengan kondisi `true` yang bakal berhenti jika `quotient` sama dengan 0.

Didalam looping kita mendapatkan `remainder` atau sisa bagi menggunakan operator `modulo` dan `quotient` menggunakan operator bagi yang menghasilkan tipe data `int`.
Hasil `remainder` disimpan ke list `result`.

```dart
while (true) {
  int remainder = quotient % 2;
  quotient = quotient ~/ 2;
  result.add(remainder.toString());

  if (quotient == 0) {
    break;
  }
}
```

Setelah `quotient` sama dengan 0 looping akan berhenti dan menghasilkan nilai list.
List tersebut akan di-reverse dan menggunakan fungsi `join()` untuk mendapatkan nilai `String`.

```dart
return result.reversed.join('');
```

## Text to binary

Pada fungsi `textToBinary()` menerima input sebuah text yang berupa tipe data `String`.
Pecah text tersebut menjadi sebuah `List` untuk memudahkan konversi menggunakan fungsi `split()`.

Setelah list didapatkan looping list tersebut dan ubah setiap `String` yang dilooping menjadi ASCII dengan menggunakan fungsi `codeUnitAt()`.
Pada fungsi `codeUnitAt()` mempunyai parameter yang harus diisi yaitu index dari sebuah `String` yang akan diubah ke ASCII.

Kita akan menggunakan kembali fungsi `decimalToBinary` untuk konversi ASCII (desimal) ke biner.
Setiap biner yang panjangnya kurang dari 8, maka tambahkan angka 0 dibagian kiri menggunakan `padLeft()`.

```dart
for (String item in textList) {
  int decimal = item.codeUnitAt(0);
  String binary = decimalToBinary(decimal);

  // to 8 bit
  binary = binary.padLeft(8, '0');

  result.add(binary);
}
```

Setelah semua kata-kata diubah ke biner maka gabungkan menjadi sebuah `String` yang dipisahkan oleh spasi.

Setiap biner mewakili 1 kata.

```dart
return result.join(' ');
```

## Binary to text

Pada fungsi `binaryToText()` mengubah biner ke sebuah text.
Sekali lagi pecahkan `String` biner menjadi sebuah `List` memakai fungsi `split()`.

Looping list tersebut, setiap item list yang berupa biner kita ubah menjadi desimal menggunakan fungsi `binaryToDecimal`.
Angka desimal yang hasil konversi adalah bilangan ASCII, maka dari itu konversi ASII ke `String` menggunakan `String.fromCharCode()`.

```dart
for (var item in binaryList) {
  int decimal = binaryToDecimal(item);
  String text = String.fromCharCode(decimal);

  result.add(text);
}
```

Dan nilai balikan dari looping tersebut adalah `String` satukan `List` menggunakan fungsi `join()`.

```dart
return result.join('');
```
