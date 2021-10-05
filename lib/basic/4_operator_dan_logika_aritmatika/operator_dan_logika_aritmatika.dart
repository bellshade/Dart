class Operator {
  jalankan() {
    print('Operator Arimatika');
    print('1. Tambah');
    int a = 5;
    int b = 5;
    int hasil = a + b;
    print("a + b: " + hasil.toString());

    print('\n');

    print('2. Kurang');
    a = 10;
    b = 7;
    hasil = a - b;
    print("a - b: " + hasil.toString());

    print('\n');

    print('3. Kali');
    a = 3;
    b = 4;
    hasil = a * b;
    print("a * b: " + hasil.toString());

    print('\n');

    print('4. Bagi');
    a = 5;
    b = 3;
    double hasilBagi = a / b;
    print("a / b: " + hasilBagi.toString());

    print('\n');

    print('5. Bagi, tapi integer');
    a = 5;
    b = 3;
    hasil = a ~/ b;
    print("a ~/ b: " + hasil.toString());

    print('\n');

    print('6. Modulo');
    a = 7;
    b = 3;
    hasil = a % b;
    print("a % b: " + hasil.toString());

    print('\n');

    print('\n===========================');
    print('Increment dan Decrement');
    print('1. Prefix Increment');
    a = 0;
    b = ++a;
    print("a:" + a.toString());
    print("b:" + b.toString());

    print('\n');

    print('2. Postfix Increment');
    a = 0;
    b = a++;
    print("a: " + a.toString());
    print("b: " + b.toString());

    print('\n');

    print('3. Prefix Decrement');
    a = 0;
    b = --a;
    print("a: " + a.toString());
    print("b: " + b.toString());

    print('\n');

    print('4. Postfix Decrement');
    a = 0;
    b = a--;
    print("a: " + a.toString());
    print("b: " + b.toString());

    print('\n===========================');
    print('Assignment Operator');
    a = 5;
    a += 10;
    print("a: " + a.toString());

    a = 7;
    a ~/= 3;
    print("a: " + a.toString());

    a = 7;
    a %= 3;
    print("a: " + a.toString());
  }
}
