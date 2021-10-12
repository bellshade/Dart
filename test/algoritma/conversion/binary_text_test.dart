import 'package:test/test.dart';

import '../../../algoritma/conversion/binary_text.dart';

main() {
  List<Map<String, String>> testCase = [
    {'01001000 01100001 01101001': 'Hai'},
    {'00100000': ' '},
    {'01001011 01101111 01101011 00100000 01000010 01101001 01110011 01100001': 'Kok Bisa'},
    {'01100010 01101111 01101111 01101110 01100111': 'boong'},
    {'01001011 01100001 01101101 01110101 00100000 00111111': 'Kamu ?'},
  ];

  test('Binary to text', () {
    for (Map<String, String> item in testCase) {
      expect(binaryToText(item.keys.first), item.values.first);
    }
  });

  test('Text to binary', () {
    for (Map<String, String> item in testCase) {
      expect(textToBinary(item.values.first), item.keys.first);
    }
  });
}
