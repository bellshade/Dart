void main(List<String> arguments) {
  // Tipe data int atau integer digunakan untuk merepresentasikan nilai bilangan
  // bulat (bisa bernilai negatif, nol, atau positif).
  // Contoh :
  int nilaiInteger = 9;
  print('Nilai Integer : $nilaiInteger');

  // tipe data double digunakan untuk merepresentasikan nilai pecahan. Jika
  // dalam matematika, bilangan penyebutnya dipisah dengan , (koma) sedangkan di
  // pemrograman dipisah dengan . (titik).
  // Contoh :
  double nilaiPecahan = 3.14;
  print('Nilai Pecahan : $nilaiPecahan');

  // Tipe data String digunakan untuk merepresentasikan nilai berupa beberapa
  // huruf yang membentuk sebuah kalimat. Nilai pada String bisa dibungkus
  // menggunakan petik satu (') atau petik dua (").
  // Contoh :
  String nilaiString1 = 'Web Programming Unpas';
  print('Nilai String 1 : $nilaiString1');
  String nilaiString2 = "Terimakasih 'Bellshade'!";
  print('Nilai String 2 : $nilaiString2');

  // Tipe data bool atau boolean digunakan untuk merepresentasikan nilai dua
  // boolean (true dan false).
  // Contoh :
  bool nilaiBoolean1 = true;
  print('Nilai Integer 1 : $nilaiBoolean1');
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
}
