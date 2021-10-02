import 'package:test/test.dart';

void main() {
  List<int> listInteger = List.filled(3, 0, growable: true);
  listInteger.add(5);

  test('Variabel dengan var', () {
    expect(listInteger, [0, 0, 0, 5]);
  });
}
