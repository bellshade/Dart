void main(List<String> arguments) {
  // ========[Tipe Data Integer]========
  // Tipe data int atau integer digunakan untuk merepresentasikan nilai bilangan
  // bulat (bisa bernilai negatif, nol, atau positif).
  // Contoh :
  int nilaiInteger = 9;
  print('Nilai Integer : $nilaiInteger');

  // ========[Tipe Data Double]========
  // tipe data double digunakan untuk merepresentasikan nilai pecahan. Jika
  // dalam matematika bilangan penyebutnya dipisah dengan , (koma) sedangkan di
  // pemrograman dipisah dengan . (titik).
  // Contoh :
  double nilaiPecahan = 3.14;
  print('Nilai Pecahan : $nilaiPecahan');

  // ========[Tipe Data String]========
  // Tipe data String digunakan untuk merepresentasikan nilai berupa beberapa
  // huruf yang membentuk sebuah kalimat. Nilai pada String bisa dibungkus
  // menggunakan petik satu (') atau petik dua (").
  // Contoh :
  String nilaiString1 = 'Web Programming Unpas';
  print('Nilai String 1 : $nilaiString1');
  String nilaiString2 = "Terimakasih 'Bellshade'!";
  print('Nilai String 2 : $nilaiString2');

  // ========[Tipe Data Boolean]========
  // Tipe data bool atau boolean digunakan untuk merepresentasikan nilai boolean
  // (true dan false).
  // Contoh :
  bool nilaiBoolean1 = true;
  print('Nilai Boolean 1 : $nilaiBoolean1');
  // membandingkan dua value dari dua tipe data lain. Jika sama maka akan
  // menghasilkan nilai boolean true, sebaliknya akan menghasilkan nilai boolean
  // false.
  bool nilaiBoolean2 = "Aku" == "Dia"; // <--- false, karena tidak sama
  print('Nilai Boolean 2 : $nilaiBoolean2');
  bool nilaiBoolean3 = "Aku" == "Aku"; // <--- true, karena sama
  print('Nilai Boolean 3 : $nilaiBoolean3');
  bool nilaiBoolean4 = 1 == 1; // <--- true, karena sama
  print('Nilai Boolean 4 : $nilaiBoolean4');
  bool nilaiBoolean5 = 1 == 1.0; // <--- true, karena sama
  print('Nilai Boolean 5 : $nilaiBoolean5');
  bool nilaiBoolean6 = 2.5 == 5; // <--- false, karena tidak sama
  print('Nilai Boolean 6 : $nilaiBoolean6');

  // ========[Tipe Data List]========
  // Tipe data List digunakan untuk merepresentasikan kumpulan atau list dari
  // beberapa nilai. List dalam Dart sama dengan Array di bahasa pemrograman
  // Lain.
  //
  // Dalam Dart ada 2 tipe List berdasarkan penentuan panjangnya, yaitu Fixed
  // Length dan Growable.
  // 1. Fixed Length : List sudah ditentukan panjangnya diawal dan tidak bisa
  // diubah-ubah lagi panjangnya.
  // 2. Growable : Panjang list bisa berubah secara dinamis dengen menyesuaikan
  // item-itemnya.
  //
  // Contoh Fixed Length:
  // 1. Membuat list bilangan bulat dengan panjang 3 item dan default valuenya
  // adalah 0
  List<int> listFixedInteger = List.filled(3, 0);
  print('Nilai Fixed List Integer : $listFixedInteger');
  // 2. Membuat list String dengan panjang 5 item dan default valuenya adalah
  // 'wpu'
  List<String> listFixedString = List.filled(5, 'wpu');
  print('Nilai Fixed List String : $listFixedString');
  // 3. Membuat list String yang bisa diisi kosong/null dengan panjang 4 item
  // dan default valuenya adalah null
  List<String?> listFixedStringNull = List.filled(4, null);
  print('Nilai Fixed List String (bisa null) : $listFixedStringNull');

  // Contoh Growable:
  // 1. Membuat list bilangan bulat dengan langsung memberi value berupa list,
  // bisa dengan isi atau kosong.
  // * Contoh nilai list dengan isi: [10, 20, 30, 40, 50]
  // * Contoh nilai list kosong: []
  // Dibawah ini menggunakan contoh nilai list dengan isi..
  List<int> listGrowableInteger = [10, 20, 30, 40, 50];
  print('Nilai Growable List Integer : $listGrowableInteger');
  // 2. Menambah data ke list growable
  listGrowableInteger.add(60);
  print(
      'Nilai Growable List Integer (setelah ditambah) : $listGrowableInteger');
  // Membuat list growable dengan tipe data dinamis
  List<dynamic> listGrowableDynamic = ['Lorem', 3, 18.56, true, null];
  print('Nilai Growable List dinamis : $listGrowableDynamic');

  // ========[Tipe Data Map]========
  // Tipe data Map digunakan untuk merepresentaikan kumpulan value dengan
  // pasangan 'key' dengan 'value' dari key tersebut. 'value' dari setiap
  // 'key' bisa diisi dengan tipe data apa saja (dinamis).
  // Contoh 1:
  // Memberi value Map kosong
  Map tempatTinggal = {};
  // Menambah key dan valuenya
  tempatTinggal['Adit'] = 'Planet Bekasi';
  print('Nilai Map (analogi: tempat tinggal) : $tempatTinggal');
  // Contoh 2:
  // Langsung memberi beberapa value Map dengan 'key' dengan 'value' dari key
  // tersebut
  Map peliharaan = {
    'Adit': 'Megalodon',
    'Sopo': 'Titanoboa',
    'Jarwo': 'Mosasaurus',
  };
  print('Nilai Map (analogi: peliharaan) : $peliharaan');
}
