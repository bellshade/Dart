main(List<String> args) {
  print('Operator Perbandingan');
  print('1. Operator Setara');
  int a = 5;
  int b = 5;
  String word1 = 'kata';
  String word2 = 'kata ';
  print(a == b);
  print(word1 == word2);

  print('2. Operator Tidak Setara');
  print(a != b);
  print(word1 != word2);

  print('3. Operator Lebih Dari');
  a = 5;
  b = 6;
  print(a > b);
  print(b > a);

  print('4. Operator Kurang Dari');
  print(a < b);
  print(b < a);

  print('5. Operator Lebih Dari atau Setara');
  a = 8;
  b = 6;
  print(a >= b);
  b = 8;
  print(a >= b);

  print('5. Operator Kurang Dari atau Setara');
  a = 8;
  b = 6;
  print(a <= b);
  b = 8;
  print(a <= b);

  print('\n----------------------');
  print('Operator Logika');
  print('1. Operator Negasi');
  bool kondisi = true;
  print(!kondisi);

  print('2. Operator OR');
  print(1 == 1 || 'kata' == 'kata');
  print(5 == 5 || 3.0 == 3.14);
  print(false || false);

  print('3. Operator AND');
  print(true && true);
  print(true && false);
  print('kata' == 'kalimat' && false);

  print('\n----------------------');
  print('Ekespresi Bersyarat');
  print('1. Ternary Operator');
  int angka = 5;
  // jika angka 5 tidak habis dibagi 2 maka bilangan tersebut Ganjil
  String bilangan = (angka % 2) == 0 ? 'Genap' : 'Ganjil';
  print(bilangan);

  print('2. Null Safety Operator');
  // tanda ? pada tipe data menandakan bahwa variable tersebut bisa menyimpan nilai null
  String? kata;
  print(kata ?? 'Tidak boleh null');

  print('3. If Else');
  int nilai = 6;
  if (nilai < 6) {
    // jika nilai kurang dari 6
    print('Remedial');
  } else if (nilai >= 6 && nilai <= 8) {
    // jika nilai lebih sama dari 6 dan kurang sama dari 8
    print('Cukup');
  } else {
    // jika nilai lebih dari 8
    print('Sempurna');
  }

  print('4. Switch Case');
  String waktu = 'Malam';
  switch (waktu) {
    case 'Pagi':
      print('Selamat Pagi');
      break;
    case 'Siang':
      print('Selamat Siang');
      break;
    case 'Malam':
      print('Selamat Malam');
      break;
    default:
      print('Hai untuk mu');
  }
}
