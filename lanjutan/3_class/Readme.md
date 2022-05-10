# Class

Dart adalah sebuah bahasa yang **Berorientasi Objek**.
Semua objek adalah sebuah _instance_ dari kelas, dan semua kelas merupakan turunan dari sebuah kelas **Objek**.

Berikut beberapa yang akan kita bahas tentang kelas:

- [Constructor](#constructor)
  - [Instance an object](#instance-an-object)
  - [Const constructor](#const-constructor)
  - [Named constructor](#named-constructor)
- [Variable class](#variable-class)
  - [Assign variable](#assign-variable)
  - [Assign variable with cascade operator](#assign-variable-with-cascade-operator)
  - [Assign variable with named parameter](#assign-variable-with-named-parameter)
- [Method](#method)
  - [Static variable](#static-variable)
  - [Static method](#static-method)
  - [Callable class](#callable-class)

## Constructor

Sebuah kelas tidak luput dari adanya sebuah Konstruktor.
Konstruktor berguna untuk menginstansi sebuah Kelas.

```dart
class Hewan {
  Hewan();
}
```

Biasanya kita membuat Konstruktor hanya untuk memberi sebuah nilai ke variabel Kelas.
Dan jika kita tidak membuat sebuah Konstruktor, maka Dart akan dengan sendirinya membuatnya.

```dart
class Hewan {
}
```

### Instance an object

Untuk menginstansi sebuah objek dari kelas pada pemrograman Dart agak berbeda dengan bahasa pemrograman lainnya.
Biasanya kita ingin menginstansi sebuah objek harus diikuti dengan kata kunci `new`.
Pada pemrograman Dart kita tidak wajib memberi kata kunci tersebut.

```dart
void main() {
  Hewan hewan = Hewan();
  print(hewan);
}
```

Jika dijalankan, maka menghasilkan nama dari kelas yang diinstansi.

```bash
Instance of 'Hewan'
```

### Const constructor

Pada Konstruktor kita juga bisa memberi kata kunci `const`.
Jika belum tau apa itu `const` bisa baca materi [Variable](/basic/2_tipe_data/).

```dart
class Hewan {
  Hewan();
}

void main() {
  Hewan hewan = const Hewan();
  print(hewan);
}
```

### Named constructor

Jika kalian sudah mempelajari bahasa pemrograman lainnya seperti Java, kita harus membuat sebuah static method untuk menginstansi sebuah objek dengan nama.

```dart
class Hewan {
  static mamalia() {
    return Hewan();
  }
}
```

Pada Dart hal tersebut dipangkas menjadi mudah dibaca.

```dart
class Hewan {
  // Named constructor
  const Hewan.mamalia();
  const Hewan.amfibi();
}

void main() {
  Hewan hewan = const Hewan();
  Hewan mamalia = const Hewan.mamalia();
  Hewan amfibi = const Hewan.amfibi();
  print(hewan);
  print(mamalia);
  print(amfibi);
}
```

## Variable class

Sebuah variabel pada kelas di pemrograman Dart tidak jauh dengan pemrograman lainnya.
Ada beberapa cara untuk memberikan nilai pada variabel.

Contoh dari Variabel kelas

```dart
class Hewan {
  String? nama;
}

void main() {
  Hewan hewan = Hewan();
  hewan.nama = 'Kangguru';

  print(hewan.nama);
}
```

### Assign variable

Pada contoh sebelumnya kita menggunakan tanda `?` untuk menandakan bahwa variabel tersebut memungkinkan menyimpan nilai `null`.
Kita perlu menginisiasikan sebuah varibel pada saat menginstansi objek, jika ingin sebuah variabel tidak menyimpan nilai `null`.

Kata kunci `this` untuk menunjukkan bahwa variabel tersebut kepunyaan dari kelas.

```dart
class Hewan {
  String nama;
  Hewan(this.nama);
}

void main() {
  Hewan hewan = Hewan('Kangguru');
  print(hewan.nama);
}
```

### Assign variable with cascade operator

Pada umumnya kita menginisiasi variabel dengan cara membuat instansi dari sebuah objek dan inisialisasi variabel.

Contohnya seperti ini.

```dart
class Hewan {
  String? nama;
}

void main() {
  Hewan hewan = Hewan();
  hewan.nama = 'Kangguru';
  print(hewan.nama);
}
```

Akan tetapi kita bisa membuat hal tersebut menjadi lebih sederhana menggunakan **Cascade Operator**.

```dart
void main() {
  Hewan hewan = Hewan()
    ..nama = 'Kangguru';

  print(hewan.nama);
}
```

Perlu diperhatikan posisi titik koma berada di akhir pada saat selesai menggunakan **Cascade Operator**.

### Assign variable with named parameter

Parameter bernama yang biasanya digunakan pada saat pemanggilan fungsi, bisa digunakan juga pada Konstruktor.
Dan perlu diingat juga menggunakan keyword `required` untuk variabel yang tidak boleh null.

```dart
class Hewan {
  String nama;
  Hewan({required this.nama});
}

void main() {
  Hewan hewan = Hewan(nama: 'Kangguru');

  print(hewan.nama);
}
```

## Method

Method atau metode hampir sama seperti fungsi.
Yang membedakan hanyalah metode terikat dengan kelas, jika fungsi tidak.

Contoh.

```dart
class Hewan {
  void metode() {
    print('ini adalah metode');
  }
}

void fungsi() {
  print('Ini adalah fungsi');
}

void main() {
  Hewan hewan = Hewan();

  hewan.metode();
  fungsi();
}
```

### Static variable

Kata kunci `static` pada variabel berfungsi untuk memanggil sebuah variabel dari kelas, tanpa melakukan instansi objek.

```dart
class Hewan {
  static String mamalia = 'Kangguru';
}

void main() {
  print(Hewan.mamalia);
}
```

### Static method

Sama seperti variabel statis, sebuah metode bisa dipanggil tanpa adanya instansi sebuah objek.

Perlu diingat sebuah metode tidak bisa menggunakan variabel yang non-statis.

```dart
class Hewan() {
  String nama;

  static String panggilHewan() {
    return nama; // error
  }
}
```

Tapi bisa menggunakan variabel yang statis.

```dart
class Hewan {
  static String nama = 'Kangguru';

  static void panggilNama() {
    print(nama);
  }
}

void main() {
  Hewan.panggilNama();
}
```

### Callable class

Sebuah method yang sama seperti memanggil sebuah fungsi tetapi dari sebuah class

#### Catatan

_Dart tidak support dengan banyak callable class yaitu jika mencoba membuat lebih dari satu fungsi yang dapat memanggil class yang sama akan menampilkan error_

```dart
class Hewan {
  final String nama;

  const Hewan({required this.nama});

  // Tanpa return type
  void call() {
    print('Namaku adalah ' + nama);
  }
}

class Kucing {
  // Dengan return type
  String call(String nama) {
    return 'Namakau adalah ' + nama;
  }
}

void main() {
  var hewan = Hewan(nama: 'Johnny');
  var kucing = Kucing();

  // Memanggil fungsi `call()`
  hewan();
  print(kucing('Sins'));
}
```

[<< Materi sebelumnya](/lanjutan/2_exception/) | [Materi selanjutnya >>](#)
