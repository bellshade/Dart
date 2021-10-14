import 'package:test/test.dart';

import '../../../algoritma/conversion/binary_decimal.dart';

main() {
  List<Map<int, String>> testCase = [
    {0: '0'},
    {1: '1'},
    {2: '10'},
    {3: '11'},
    {4: '100'},
    {5: '101'},
    {6: '110'},
    {7: '111'},
    {8: '1000'},
    {9: '1001'},
    {10: '1010'},
    {11: '1011'},
    {12: '1100'},
    {13: '1101'},
    {14: '1110'},
    {15: '1111'},
    {16: '10000'},
    {17: '10001'},
    {18: '10010'},
    {19: '10011'},
    {20: '10100'},
    {21: '10101'},
    {22: '10110'},
    {23: '10111'},
    {24: '11000'},
    {25: '11001'},
    {26: '11010'},
    {27: '11011'},
    {28: '11100'},
    {29: '11101'},
    {30: '11110'},
    {31: '11111'},
    {32: '100000'},
    {64: '1000000'},
    {128: '10000000'},
    {256: '100000000'},
  ];

  test('Binary to decimal', () {
    for (var item in testCase) {
      expect(binaryToDecimal(item.values.first), item.keys.first);
    }
  });

  test('Decimal to binary', () {
    for (var item in testCase) {
      expect(decimalToBinary(item.keys.first), item.values.first);
    }
  });
}
