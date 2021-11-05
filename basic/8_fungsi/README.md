
# Fungsi

Fungsi adalah sub-program yang bisa digunakan kembali baik di dalam program itu sendiri, maupun di program yang lain. Contoh fungsi yang sering kita buat adalah fungsi main(). Fungsi ini memang wajib ada di setiap program Dart karena akan dieksekusi pertama kali.

## Jenis Fungsi

#### Non-Void
Fungsi biasanya akan mengembalikan sebuah nilai dari hasil prosesnya. Karena itu, kita harus menentukan tipe data untuk nilai yang akan dikembalikan. Ditandai dengan jenis tipe data di awal fungsi (int, String, dll). dan harus mengembalikan nilai dan ditandai dengan `return`

#### Void
 Apabila fungsi tersebut tidak memiliki nilai kembalian, maka kita harus menggunakan tipe void untuk menyatakan kalau fungsi tersebut tidak akan mengembalikan nilai apa-apa. Ditandai dengan `void` di awal fungsi


##  Parameter
Jenis-jenis fungsi yang telah disebutkan tadi dapat ditambahkan parameter untuk membuat fungsi lebih dinamis. tanda kurung setelah nama fungsi merupakan parameter dari fungsi tersebut `void namaFungsi (String Parameter) {}`. Penggunaan parameter harus diawali dari tipe data parameter tersebut.

```
import 'dart:io';

int hitungUsia(int tahun) {
  return 2021 - tahun;
}

void perkenalan(String nama) {
  print("Haloo.. Nama saya $nama");
}

main() {
  print("Perkenalan");

  stdout.write("Input Tahun Lahir : ");
  int? tahun = int.parse(stdin.readLineSync()!);

  stdout.write("Input Nama : ");
  String? n = stdin.readLineSync()!;

  print("==============");

  int usia = hitungUsia(tahun);
  perkenalan(n);

  print("Umur saya $usia");
}

```

**Menghasilkan:**
```
Perkenalan
Input Tahun Lahir : 2000
Input Nama : Budi
==============
Haloo.. Nama saya Budi
Umur saya 21
```

---

[<< Materi sebelumnya](https://github.com/bellshade/Dart/tree/main/basic/7_input)