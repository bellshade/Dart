# Operator

Pada pemrograman pastinya butuh Operator untuk mengkalkulasi suatu angka atau pun melakukan perbandingan.
Dart sendiri banyak mendukung Operator untuk melakukan hal tersebut.

## Operator Aritmatika (Arithmetic Operator)

### 1. Tambah (+)

Operator tambah `+` untuk menjumlah 2 bilangan.

```dart
int a = 5;
int b = 5;
int hasil = a + b;
print(hasil); // 10
```

### 2. Kurang (-)

Operator kurang `-` untuk mengurang 2 bilangan.

```dart
int a = 10;
int b = 7;
int hasil = a - b;
print(hasil); // 3
```

### 3. Kali (\*)

Operator kali `*` untuk mengkali 2 bilangan.

```dart
int a = 3;
int b = 4;
int hasil = a * b;
print(hasil); // 12
```

### 4. Bagi (/)

Operator bagi `/` untuk membagi 2 bilangan.
Untuk tipe data yang dihasilkan pada pembagian adalah `double` walaupun 2 bilangan yang dibagi merupakan `int`.

```dart
int a = 5;
int b = 3;
double hasil = a / b;
print(hasil); // 1.67
```

### 5. Bagi, tapi integer (~/)

Operator untuk pembagian kali ini agak berbeda dari sebelumnya.
Sama-sama membagi dari 2 bilangan tapi tipe data yang dihasilkan bukan `double` melainkan `int`.
Operator ini sangat berguna jika ingin mendapatkan nilai tanpa koma. <br>

```dart
int a = 5;
int b = 3;
int hasil = a ~/ b;
print(hasil); // 1
```

> Ingat, operator ini bukan pembulatan melainkan hanya menghilangkan koma.

### 6. Modulo

Operator modulo `%` untuk mendapatkan sisa bagi antara 2 bilangan.
Untuk memudahkan bagaimana modulo bekerja, kita bisa menggunakan konsep pembagian saat belajar di SD yaitu dengan pengurangan. <br>
Contohnya, `7 % 3` angka 7 akan terus dikurang 3 sampai angka 7 tidak bisa di kurang lagi dengan angka 3. <br>

| Iterasi | Pengurangan | Hasil |
| ------- | ----------- | ----- |
| 1       | 7-3         | 4     |
| 2       | 4-3         | 1     |

Angka 1 tidak bisa dikurang dengan 3 maka hasil dari modulo adalah `1` dan hasil bagi adalah jumlah dari iterasi yaitu `2`, karena ada sisa bagi berarti hasilnya bilangan berkoma `2.xxx`.

```dart
int a = 7;
int b = 3;
int hasil = a % b;
print(hasil); // 1
```

## Increment dan Decrement

### 1. Prefix Increment

Untuk prefix increment. Angka di variable `a` di-increment-kan **sebelum** variable `a` disimpan ke variable `b`.

```dart
int a = 0;
int b = ++a;
print(a); // 1
print(b); // 1
```

### 2. Postfix Increment

Untuk postfix increment. Angka di variable `a` di-increment-kan **setelah** nilai variable `a` disimpan ke variable `b`.

```dart
int a = 0;
int b = a++;
print(a); // 1
print(b); // 0
```

### 3. Prefix Decrement

Untuk prefix decrement. Angka di variable `a` di-decrement-kan **sebelum** variable `a` disimpan ke variable `b`.

```dart
int a = 0;
int b = --a;
print(a); // -1
print(b); // -1
```

### 4. Postfix Decrement

Untuk postfix decrement. Angka di variable `a` di-decrement-kan **setelah** nilai variable `a` disimpan ke variable `b`.

```dart
int a = 0;
int b = a--;
print(a); // -1
print(b); // 0
```

## Operator Penugasan (Assignment Operator)

Pada operator penugasan sama seperti operator aritmatika sebelumnya.
Yang membedakan adalah jumlah variable yang di kalkulasi adalah variable itu sendiri.

```dart
int a = 5;
a += 10; // sama seperti a = a + 10;
print(a); // 15

int a = 7;
a ~/= 3; // sama seperti a = a ~/ 3;
print(a); // 2

int a = 7;
a %= 3; // sama seperti a = a % 3;
print(a); // 1
```

## Operator Test Type

Operator yang membandingkan apakah sebuah variable adalah tipe data tertentu.

| Operator |                            Fungsi                             |
| :------: | :-----------------------------------------------------------: |
|    is    |    Menghasilkan true jika variable sesuai dengan tipe data    |
|   is!    | Menghasilkan true jika variable tidak sesuai dengan tipe data |

```Dart
dynamic variable = 1;

print(intVariable is int); // true
print(intVariable is! int); // false
```

[<< Materi sebelumnya](https://github.com/bellshade/Dart/tree/main/basic/3_variabel) | [Materi selanjutnya >>](https://github.com/bellshade/Dart/tree/main/basic/5_kondisi)
