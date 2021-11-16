void main(List<String> args) {
  int number = 5;

  try {
    if (number % 2 == 0) {
      throw Exception('Bilangan genap');
    } else {
      throw UnimplementedError('Bilangan ganjil');
    }
  } on Exception catch (e) {
    print('Tertangkap di Exception - $e');
  } on UnimplementedError catch (e) {
    print('Tertangkap di UnimplementedError - $e');
  }

  print('Baris terakhir kode');
}
