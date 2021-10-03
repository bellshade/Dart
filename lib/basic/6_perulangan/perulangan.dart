class Perulangan {
  jalankan() {
    print('Perulangan For');
    print('1. For');
    for (int i = 0; i < 10; i++) {
      print(i);
    }

    print('\n2. Step pada For');
    for (int i = 0; i < 10; i += 2) {
      print(i);
    }

    print('\n3. For in');
    List<String> vokal = ['a', 'i', 'e', 'o'];
    for (String huruf in vokal) {
      print(huruf);
    }

    print('\nPerulangan While');
    print('1. While');
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

    print('\n2. Do-while');
    int pos = 0;
    while (pos < 5) {
      pos++;
      print('Masuk while. Perulangan ke-$pos');
    }

    bool kondisiDoWhile = false;
    do {
      print('Masuk do-while');
    } while (kondisiDoWhile);

    print('\nKeyword break dan continue');
    print('1. Break');
    for (int i = 0; i < 10; i++) {
      if (i == 5) {
        print('ter-break');
        break;
      }
      print(i);
    }

    print('\n2. Continue');
    for (int i = 0; i < 10; i++) {
      print(i);
      if (i % 2 == 0) {
        continue;
      }
    }
  }
}
