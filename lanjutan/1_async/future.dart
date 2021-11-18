main(List<String> args) async {
  // Isikan value 1 untuk menjalankan contoh memanggil future menggunakan 'await',
  // dan isikan value 2 untuk menjalankan contoh memanggil future menggunakan '.then'
  int pilihan = 2;

  if (pilihan == 1) {
    _contohAsyncAwait();
  } else if (pilihan == 2) {
    _contohAsyncThen();
  } else {
    print('pilihan tidak sesuai.');
  }
}

/// Fungsi ini berisi baris kode untuk memanggil future menggunakan 'await' dan kode setelahnya tidak akan dijalankan karena menunggu future yang
/// dipanggil menggunakan await selesai terlebih dahulu.
///
/// Note: wajib menggunakan kata kunci 'async' setelah nama function.
void _contohAsyncAwait() async {
  print('Contoh memanggil future menggunakan await:');
  print('A: Aku berangkat...');

  // memanggil future menggunakan await
  print(await _panggilFuture());

  // kode ini, yang mana berada setelah pemanggilan future, tidak akan dijalankan sebelum future yang dipanggil selesai.
  print('A: Aku juga baru datang!');
}

/// Fungsi ini berisi baris kode untuk memanggil future menggunakan .then dan kode setelahnya akan dijalankan sembari menunggu future selesai dan
/// terlambat.
///
/// Jangan gunakan metode ini jika tidak ingin kode lainnya dijalankan sebelum future yang dipanggil selesai.
///
/// Note: tidak wajib menggunakan kata kunci 'async' setelah nama function.
void _contohAsyncThen() {
  print('Contoh memanggil future menggunakan .then:');
  print('A: Kamu sampai mana?');

  // memanggil future menggunakan .then
  _panggilFuture().then((String data) {
    print(data);
  });

  // kode ini, yang mana berada setelah pemanggilan future, akan dijalankan meskipun future yang dipanggil belum selesai.
  print('A: Lama banget dia...');
}

/// Sebuah Future yang mengembalikan/me-return data berupa String setelah durasi 3 detik.
Future<String> _panggilFuture() async {
  await Future.delayed(Duration(seconds: 3));

  return 'B: Aku datang!';
}
