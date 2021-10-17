Future<String> callApi() async {
  await Future.delayed(Duration(seconds: 5));

  return 'Berhasil mengambil data dari API';
}

main(List<String> args) {
  print('Mulai program');

  callApi().then((String data) => print(data));

  print('Akhir program');
}
