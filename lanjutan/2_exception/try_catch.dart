void main(List<String> args) {
  int number = 6;

  try {
    if (number % 2 == 0) {
      throw Exception('Bilangan genap');
    }
  } catch (e) {
    print(e);
  }

  print('Baris terakhir kode');
}
