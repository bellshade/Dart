main(List<String> args) {
  // Menggunakan var
  var sebuahVariabel = 'Hello, World!';
  print(sebuahVariabel);

  // Menentukan tipe data
  // String
  String variabelString = 'wpu';
  print(variabelString);
  // int
  int variabelInteger = 5;
  print(variabelInteger);

  // Nullable
  String? stringBisaNull; // <- kosong/null
  print(stringBisaNull); // <- menampilkan output 'null'

  // Menggunakan late
  late int isiNanti;
  isiNanti = 100; // <- mengisi variabel setelah pembuatan variabelnya
  print(isiNanti);

  // Menggunakan dynamic
  dynamic variabelDinamis = 'Konnichiwa'; // <- pertama, diisi dengan String
  print('Pertama : $variabelDinamis');
  variabelDinamis = 39; // <- lalu diisi dengan integer
  print('Kedua : $variabelDinamis');

  // Menggunakan const
  const nilaiConst1 = 5;
  const String nilaiConst2 = 'koding';
  print('const 1 : $nilaiConst1 | const 2 : $nilaiConst2');
  // Menggunakan final
  final nilaiFinal1 = 20.5;
  final List<String> nilaiFinal2 = ['Dart', 'Java', 'Python'];
  print('final 1 : $nilaiFinal1 | final 2 : $nilaiFinal2');

  // Untuk perhitungan
  const pi = 22 / 7;
  const jariJari = 7;
  const luasLingkaran = pi * (jariJari * jariJari);
  print('Luas lingkaran : $luasLingkaran');
}
