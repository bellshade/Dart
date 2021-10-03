# Increment Dan Decrement

Increment Digunakan untuk menambah variabel sebanyak 1 angka,
Decremenet Digunakan untuk mengurangi variabel sebanyak 1 angka

[readLineSync()](https:api.dart.dev/stable/1.10.1/dart-io/Stdin/readLineSync.html) yang terdapat  di dalam library `dart:io`.

##  Penggunaan `--a, a--. a++, ++a`

import 'dart:io';
 
void main()
{
    //Buat variabel
    var a = 0;
    var i = 10;

    var result = ++a;
    // Pre increment
    /* 
       Tambah nilai variabel a sebanyak 1,
       lalu kirim nilai variabel a
    
    */

    var result1 = a++;
    // Past increment
    /* 
       kirim nilai variabel a,
       lalu kita tambah variabel a sebanyak 1
    
    */

    var resul2 = --i;
    // Pre Decrement
    /* 
       Kurangi nilai variabel i sebanyak 1,
       lalu kirim nilai variabel a
    
    */

    var result3 = i--;
    // Past Decrement
    /* 
       kirim nilai variabel i,
       lalu kita kurangi variabel i sebanyak 1
    
    */

    print('Hasil dari increment a adalah = $result');
    print('Hasil dari increment a adalah = $result1');

    print('Hasil dari increment a adalah = $resul2');
    print('Hasil dari increment a adalah = $result3');

    print('${a++}');
    print('${i++}');
}
```

**Menghasilkan:**
```
Hasil dari pre increment a adalah = 1
Hasil dari past increment a adalah = 1
Hasil dari pre Decrement i adalah = 9
Hasil dari pre Decrement i adalah = 9

2
8
```