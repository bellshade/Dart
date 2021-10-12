Stream<String> counter(int max) async* {
  for (int i = 0; i < max; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield 'Detik ke-${i + 1}';
  }
}

main(List<String> args) async {
  print('Mulai program');

  counter(5).listen((counter) => print(counter));

  print('Akhir program');
}
