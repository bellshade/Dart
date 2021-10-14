import '../conversion/binary_decimal.dart';

String textToBinary(String text) {
  List<String> result = [];
  List<String> textList = text.split('');

  for (String item in textList) {
    int decimal = item.codeUnitAt(0);
    String binary = decimalToBinary(decimal);

    // to 8 bit
    binary = binary.padLeft(8, '0');

    result.add(binary);
  }

  return result.join(' ');
}

String binaryToText(String binary) {
  List<String> result = [];
  List<String> binaryList = binary.split(' ');

  for (var item in binaryList) {
    int decimal = binaryToDecimal(item);
    String text = String.fromCharCode(decimal);

    result.add(text);
  }

  return result.join('');
}

main(List<String> args) {
  print(textToBinary('Hai'));

  print(binaryToText('1001000 1100001 1101001'));
}
