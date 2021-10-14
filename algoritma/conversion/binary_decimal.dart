import 'dart:math' as math;

int binaryToDecimal(String binaries) {
  int result = 0;

  List<String> binaryList = binaries.split('');
  List<String> binaryListReversed = binaryList.reversed.toList();

  for (int index = 0; index < binaryListReversed.length; index++) {
    int binary = int.parse(binaryListReversed[index]);

    result += binary * math.pow(2, index).toInt();
  }

  return result;
}

String decimalToBinary(int decimal) {
  List<String> result = [];
  // init quotient
  int quotient = decimal;

  while (true) {
    int remainder = quotient % 2;
    quotient = quotient ~/ 2;
    result.add(remainder.toString());

    if (quotient == 0) {
      break;
    }
  }

  return result.reversed.join('');
}

main(List<String> args) {
  print(binaryToDecimal('111001'));

  print(decimalToBinary(13));
  print(decimalToBinary(256));
}
