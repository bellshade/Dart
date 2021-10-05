main(List<String> args) {
  // Tipe Data integer
  int nilaiInteger = 9;
  print('Nilai Integer : $nilaiInteger');

  // Tipe Data Double
  double nilaiPecahan = 3.14;
  print('Nilai Pecahan : $nilaiPecahan');

  // Tipe Data String
  String nilaiString1 = 'Web Programming Unpas';
  print('Nilai String 1 : $nilaiString1');
  String nilaiString2 = "Terimakasih 'Bellshade'!";
  print('Nilai String 2 : $nilaiString2');

  // Tipe Data Boolean
  bool nilaiBoolean = true;
  print('Nilai Boolean : $nilaiBoolean');

  // Tipe Data List
  // Contoh Fixed Length :
  List<int> listFixedInteger = List.filled(3, 0);
  print('Nilai Fixed List Integer : $listFixedInteger');
  // 2. Membuat list String dengan panjang 5 item
  List<String> listFixedString = List.generate(5, (index) => 'wpu $index');
  print('Nilai Fixed List String : $listFixedString');

  // Contoh Growable:
  // 1. Membuat list bilangan bulat dengan langsung memberi value.
  List<int> listGrowableInteger = [10, 20, 30, 40, 50];
  print('Nilai Growable List Integer : $listGrowableInteger');
  // 2. Menambah data ke list growable
  listGrowableInteger.add(60);
  print('Nilai Growable List Integer (setelah ditambah) : $listGrowableInteger');

  // Tipe Data Map
  // Contoh 1:
  // Memberi value Map kosong
  Map tempatTinggal = {};
  // Menambah key dan valuenya
  tempatTinggal['Adit'] = 'Planet Bekasi';
  print('Nilai Map (analogi: tempat tinggal) : $tempatTinggal');
  // Contoh 2:
  // Langsung memberi beberapa value Map dengan 'key' dengan 'value'
  Map peliharaan = {
    'Adit': 'Megalodon',
    'Sopo': 'Titanoboa',
    'Jarwo': 'Mosasaurus',
  };
  print('Nilai Map (analogi: peliharaan) : $peliharaan');
}
