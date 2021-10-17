Future<String> callApi() async {
  await Future.delayed(Duration(seconds: 5));

  return 'Berhasil mengambil data dari API';
}

// keyword async disini digunakan untuk melakukan async await pada kode
main(List<String> args) async {
  print('Mulai program');

  callApi().then((String data) => print('menggunakan method then: ' + data));

  print('menggunakan await: ' + await callApi());

  print('Akhir program');
}
