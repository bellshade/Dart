
# Fungsi

Fungsi adalah sub-program yang bisa digunakan kembali baik di dalam program itu sendiri, maupun di program yang lain. Contoh fungsi yang sering kita buat adalah fungsi main(). Fungsi ini memang wajib ada di setiap program Dart karena akan dieksekusi pertama kali.

## Jenis Fungsi

#### Non-Void
Fungsi biasanya akan mengembalikan sebuah nilai dari hasil prosesnya. Karena itu, kita harus menentukan tipe data untuk nilai yang akan dikembalikan. Ditandai dengan jenis tipe data di awal fungsi (int, String, dll). dan harus mengembalikan nilai dan ditandai dengan `return`

#### Void
 Apabila fungsi tersebut tidak memiliki nilai kembalian, maka kita harus menggunakan tipe void untuk menyatakan kalau fungsi tersebut tidak akan mengembalikan nilai apa-apa. Ditandai dengan `void` di awal fungsi


##  Parameter
Jenis-jenis fungsi yang telah disebutkan tadi dapat ditambahkan parameter untuk membuat fungsi lebih dinamis. tanda kurung setelah nama fungsi merupakan parameter dari fungsi tersebut `void namaFungsi (String Parameter) {}`. Penggunaan parameter harus diawali dari tipe data parameter tersebut.

```dart
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
```shell
Perkenalan
Input Tahun Lahir : 2000
Input Nama : Budi
==============
Haloo.. Nama saya Budi
Umur saya 21
```

### Jenis Parameter

#### Positional Parameter

Positional Parameter adalah sebuah parameter yang dimana ketika fungsi dipanggil maka argument yang diberikan harus sesuai dengan posisi dari parameter

Contoh:

```DART
void pembagian(nilai1, nilai2){
  print(nilai1/nilai2);
}

void main(){
  pembagian(4, 2)
  // 4 akan masuk ke parameter nilai1, sedangkan 2 akan masuk ke parameter nilai2
  // hasil: 2
}
```

Bagaimana jika nilai argument kita balik?

Nilai yang dihasilkan bukanlah `2`, gimana jika argument yang ingin kita isi bisa dimasukan sesuai dengan posisi yang kita inginkan.

Dart telah menyediakan cara untuk mengatasi masalah tersebut yaitu dengan menggunakan `Named Parameter`

Catatan: Jenis parameter ini bersifat non optional / argument wajib diberikan jika parameter tersedia.

#### Named Parameter

Named Pameter adalah sebuah parameter yang membebaskan kita untuk memberikan posisi sebuah argument dimanapun kita mau, cara kerjanya yaitu menggunakan sebuah `key`.

Contoh:

```DART
void pembagian({ nilai1, nilai2 }){
  print(nilai1/nilai2);
}

void main(){
  pembagian(nilai2: 2, nilai1: 4)
  // nilai akan masuk menyesuaikan key yang ada
  // hasil: 2
}
```

Catatan: Jenis parameter ini bersifat optional

#### Optional Parameter

Optional parameter adalah sebuah argument tidak wajib diberikan jika parameter tersedia, untuk membuat parameter menjadi optional cukup memberikan sebuah tanda `[]` pada masing-masing parameter.

Contoh:

```DART
void penjumlahan(nilai1, nilai2, [nilai3]){
  if(nilai3 != null) {
    print(nilai1/nilai2/nilai3);
  } else {
    print(nilai1/nilai2);
  }

}

void main(){
  penjumlahan(4, 2) // hasil: 6
  penjumlahan(4, 2, 4) // hasil: 10
}
```

---

[<< Materi sebelumnya](https://github.com/bellshade/Dart/tree/main/basic/7_input)