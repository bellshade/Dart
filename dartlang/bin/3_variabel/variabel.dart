void main(List<String> arguments) {
  // Kata kunci "var" sebelum penamaan variabel seperti "aku ga peduli
  // menentukan tipe datanya". Jadi saat membuat variabel dengan kata kunci
  // "var" lalu mengisinya dengan String, maka kedepannya variabel otomatis
  // hanya mau menyimpan value bertipe String.
  var sebuahVariabel = 'Hello, World!';
  print(sebuahVariabel);

  // Memberi tipe data sebelum nama variabel, bertujuan unuk memberitahu
  // memastikan bahwa variabel hanya boleh diisi oleh tipe data tertentu
  // Contoh:
  // String
  String variabelString = 'wpu';
  print(variabelString);
  // int
  int variabelInteger = 5;
  print(variabelInteger);
  // Jika variabel-variabel diatas diberi value dengan tipe data yang berbeda
  // maka akan memberikan sebuah peringatan 'syntax error'.

  // Dart (versi 2 keatas) memiliki fitur null safety, dimana secara default
  // setiap value dari variabel tidak boleh kosong/null, kecuali jika diberi
  // perintah untuk bisa kosong/null.
  // Untuk memberitahu sebuah variabel untuk bisa kosong/null bisa menggunakan
  // tanda tanya (?) tepat setelah tipe data
  // Contoh:
  String? stringBisaNull; // <- kosong/null
  print(stringBisaNull); // <- menampilkan output 'null'

  // Jika tidak mau mengisi sebuah value saat pertamakali membuat variabel, bisa
  // menggunakan kata kunci "late" sebelum pendefinisan tipe datanya
  // Contoh:
  late int isiNanti;
  isiNanti = 100; // <- mengisi variabel setelah pembuatan variabelnya
  print(isiNanti);

  // Variabel dengan kata kunci "dynamic" bisa menampung semua tipe data object
  // yang ada di Dart.
  dynamic variabelDinamis = 'Konnichiwa'; // <- pertama, diisi dengan String
  print('Pertama : $variabelDinamis');
  variabelDinamis = 39; // lalu diganti dengan value bertipe integer
  print('Kedua : $variabelDinamis');

  // Variabel dengan kata kunci "const" dan "final" digunakan untuk menyimpan
  // konstanta atau nilai tetap. Dart mencegah perubahan yang keungkinan terjadi
  // kepada variabel const atau final.
  // "const" dan "final" bisa diletakkan sebelum tipe data atau sebagai
  // pengganti "var".
  // Contoh const:
  const nilaiConst1 = 5;
  const String nilaiConst2 = 'koding';
  print('const 1 : $nilaiConst1 | const 2 : $nilaiConst2');
  // Contoh final:
  final nilaiFinal1 = 20.5;
  final List<String> nilaiFinal2 = ['Dart', 'Java', 'Python'];
  print('final 1 : $nilaiFinal1 | final 2 : $nilaiFinal2');

  // Untuk penghitungan hanya bisa menggunakan "const", "final" tidak bisa
  // digunakan untuk operasi penghitungan
  // Contoh:
  const pi = 3.14;
  const jariJari = 7;
  const luasLingkaran = pi * (jariJari * jariJari);
  print('Luas lingkaran : $luasLingkaran');
}
