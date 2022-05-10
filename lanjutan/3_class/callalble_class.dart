// Callalble class merupakan sebuath method yang sama seperti memanggil
// sebuah fungsi

class Hewan {
  final String nama;

  const Hewan({required this.nama});

  void call() {
    print('Namaku adalah ' + nama);
  }
}

class Kucing {
  String call(String nama) {
    return 'Namakau adalah ' + nama;
  }
}

void main() {
  var hewan = Hewan(nama: 'Johnny');
  var kucing = Kucing();

  // Memanggil fungsi `call()` dalam class Hewan
  hewan();

  print(kucing('Sins'));
}
