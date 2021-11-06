# Perulangan

Penulisan serta konsep perulangan dari pemrograman Dart sama seperti bahasa pemrograman yang lain.

## Perulangan For (For loop)

### 1. For

Perulangan for terdiri dari 3 unsur penting.

```dart
for (A; B; C) {}
```

A. Nilai awal.<br>
B. Kondisi yang memenuhi perulangan.<br>
C. Step atau berapa lompatan dari perulangan.<br>

Berikut contoh perulangan for.

```dart
for (int i = 0; i < 10; i++) {
  print(i);
}
// hasil yang tampil
// 0 1 2 3 4 5 6 7 8 9
```

Bisa dilihat dari kode diatas ada `nilai awal` yang menentukan perulangan dimulai dan `kondisi yang memenuhi perulangan`, jika kondisi tersebut tidak terpenuhi maka perulangan akan selesai.
`Step` yang dipakai berupa increment dari variable `i` yang berarti `i` akan bertambah 1 setiap iterasinya.

Jika di aplikasikan ke dalam bentuk tabel apa yang terjadi, berikut tampilannya.

| Iterasi | Nilai i | Batas < 10     | print(i) |
| ------- | ------- | -------------- | -------- |
| 1       | 0       | Memenuhi       | 0        |
| 2       | 1       | Memenuhi       | 1        |
| 3       | 2       | Memenuhi       | 2        |
| 4       | 3       | Memenuhi       | 3        |
| 5       | 4       | Memenuhi       | 4        |
| 6       | 5       | Memenuhi       | 5        |
| 7       | 6       | Memenuhi       | 6        |
| 8       | 7       | Memenuhi       | 7        |
| 9       | 8       | Memenuhi       | 8        |
| 10      | 9       | Memenuhi       | 9        |
| 11      | 10      | Tidak memenuhi |          |

Karena perulangan hanya menerima `i < 10`, maka jika `i == 10` kondisi menjadi tidak terpenuhi yang mengakibatkan perulangan selesai.

### 2. Step pada For

Step pada perulangan for biasanya bernilai increment 1.
Tapi, untuk kondisi tertentu step bisa saja bernilai selain increment 1.

Berikut contoh perulangan for yang step-nya 2 untuk menampilkan bilangan genap.

```dart
for (int i = 0; i < 10; i += 2) {
  print(i);
}
// hasil yang tampil
// 0 2 4 6 8
```

Jika di aplikasikan ke bentuk tabel hasilnya seperti berikut.

| Iterasi | Nilai i | Batas < 10     | print(i) |
| ------- | ------- | -------------- | -------- |
| 1       | 0       | Memenuhi       | 0        |
| 2       | 2       | Memenuhi       | 2        |
| 3       | 4       | Memenuhi       | 4        |
| 4       | 6       | Memenuhi       | 6        |
| 5       | 8       | Memenuhi       | 8        |
| 6       | 10      | Tidak memenuhi |          |

### 3. For in

Berbeda dengan perulangan for sebelumnya.
Pada `for in` kita tidak perlu mendeklarasikan `3 unsur penting`.

```dart
List<String> vokal = ['a', 'i', 'e', 'o'];
for (String huruf in vokal) {
  print(huruf);
}
// hasil yang tampil
// a i u e o
```

Bisa diliat dari kode diatas untuk `for in` hanya meng-iterasikan elemen yang ada pada List `vokal`.
Elemen yang sedang di-iterasi akan disimpan ke variable `huruf` yang tipe datanya harus sama dengan elemen di dalam List `vokal` dan perulangan otomatis berhenti jika semua elemen sudah di-iterasi.

## Perulangan While (While and do-while)

### 1. While

Perulangan `while` sangat cocok untuk kondisi yang mana `kondisi saat selesai`-nya tidak diketahui.

Contohnya, saat membaca file atau koneksi antar socket.
Pada kedua kondisi tersebut kita tidak tau kondisi pasti kapan harus selesai.

```dart
bool bacaFile = true;
int baris = 0; // anggap baris pada file
while (bacaFile) {
 print('Baca pada $baris');

 // setiap kita membaca file maka baris akan naik satu persatu
 baris++;

 // anggap file tersebut memiliki 4 baris
 if (baris == 4) {
   bacaFile = false;
 }
}
```

### 2. Do-while

Perbedaan antara `while` dengan `do-while` hanya pada pengecekan kondisi pada saat looping.<br>
Pada perulangan `while` pengecekan dilakukan di awal perulangan.
Sedangkan `do-while` dilakukan di akhir perulangan.

```dart
bool kondisiWhile = false;
while (kondisiWhile) {
  print('Masuk while');
}
// tidak tampil karena tidak masuk ke perulangan
```

```dart
bool kondisiDoWhile = false;
do {
  print('Masuk do-while');
} while (kondisiDoWhile);
// hasil yang tampil "Masuk do-while"
```

## Keyword break dan continue

### 1. Break

Penggunaan kata kunci `break` pada perulangan adalah menghentikan paksa suatu perulangan yang sedang berjalan.
`Break` biasa digunakan dengan kombinasi perkondisian untuk menghentikan perulangan.

```dart
for (int i = 0; i < 10; i++) {
  if (i == 5) {
    print('ter-break');
    break;
  }
  print(i);
}
```

Pada kode tersebut akan dihasilkan.

```
0
1
2
3
4
ter-break
```

Bisa dilihat bahwa angka 5 tidak ditampilkan ke layar.
Pada kondisi di if `break` dilakukan jika `i == 5` yang artinya perulangan akan terhenti jika `i == 5`.

### 2. Continue

Berbeda dengan `break`, keyword `continue` berfungsi untuk mengskip suatu iterasi dan melanjutkan ke iterasi selanjutnya.

Contoh menampilkan bilangan ganjil menggunakan `continue`.

```dart
for (int i = 0; i < 10; i++) {
  if (i % 2 == 0) {
    continue;
  }
  print(i);
}
```

Hasil dari eksekusi kode diatas.

```
1
3
5
7
9
```

Bisa dilihat yang tampil hanyalah bilangan ganjil.
Setiap hasil modulo sama dengan 0 yang artinya pada iterasi bilangan genap `continue` akan tereksekusi.<br>
Setiap continue tereksekusi kode **setelah** `continue` akan terskip.

Bagaimana jika print dipindah ke **sebelum** `continue`.

```dart
for (int i = 0; i < 10; i++) {
  print(i);
  if (i % 2 == 0) {
    continue;
  }
}
```

Hasilnya seperti berikut.

```
0
1
2
3
4
5
6
7
8
9
```

Semua bilangan yang di iterasi tampil ke layar.
Karena sifat `continue` hanya nge-skip baris kode **setelah** dirinya.

---

[<< Materi sebelumnya](https://github.com/bellshade/Dart/tree/main/basic/5_kondisi) | [Materi selanjutnya >>](https://github.com/bellshade/Dart/tree/main/basic/7_input)