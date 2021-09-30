# Kondisi

Pada materi kondisi di Pemograman Dart kita akan mempelajari _Operator Perbandingan_, _Operator Logika_ dan _Ekspresi Bersyarat_

## Operator Perbandingan (Equality and Relational Operator)

### 1. Operator Setara (==)

Operator untuk membandingkan suatu Object apakah setara atau tidak

```dart
int a = 5;
int b = 5;
String word = 'kata';
print(a == b); // true
print(a == word); // false
```

### 2. Operator Tidak Setara (!=)

Operator untuk membandingkan suatu Object apakah tidak setara atau setara

```dart
int a = 5;
int b = 5;
String word = 'kata';
print(a != b); // false
print(a != word); // true
```

### 3. Operator Lebih Dari (>)

Operator untuk membandingkan suatu angka apakah lebih dari.

```dart
int a = 5;
int b = 6;
print(a > b); // false
print(b > a); // true
```

### 4. Operator Kurang Dari (<)

Operator untuk membandingkan suatu angka apakah kurang dari.

```dart
int a = 5;
int b = 6;
print(a < b); // true
print(b < a); // false
```

### 5. Operator Lebih Dari atau Setara (>=)

Operator untuk membandingkan suatu angka apakah lebih dari atau setara.

```dart
int a = 8;
int b = 6;
print(a >= b); // true
b = 8;
print(a >= b); // true
```

### 6. Operator Kurang Dari atau Setara (<=)

Operator untuk membandingkan suatu angka apakah kurang dari atau setara.

```dart
int a = 8;
int b = 6;
print(a <= b); // false
b = 8;
print(a <= b); // true
```

## Operator Logika (Logical Operator)

### 1. Operator Negasi (!)

Operator negasi adalah untuk membalikan suatu nilai kondisi.

```dart
bool kondisi = true;
print(!kondisi); // false
```

### 2. Operator OR (||)

Operator yang membandingkan ke 2 kondisi, jika salah satu bernilai `true` maka hasilnya `true`

```dart
print(true || true); // true
print(true || false); // true
print(false || false); // false
```

### 3. Operator AND (&&)

Operator yang membandingkan ke 2 kondisi, jika keduanya bernilai `true` maka hasilnya `true`

```dart
print(true || true); // true
print(true || false); // false
print(false || false); // false
```

## Ekspresi Bersyarat (Conditional Expression)

### 1. Ternary Operator

Ternary operator berfungsi membandingkan nilai suatu variable ke kondisi tertentu, jika kondisi terpenuhi maka akan mengembalikan nilai, begitu sebaliknya jika kondisi tidak terpenuhi.

```dart
int angka = 5;
// jika angka 5 habis dibagi 2 maka bilangan tersebut Genap
String bilangan = (angka % 2) == 0 ? 'Genap' : 'Ganjil';
print(bilangan); // Ganjil
```

### 2. Null Safety Operator

Pada pemograman Dart sangat waspada dengan nilai `null` maka dari itu jika ada nilai yang `null` kita harus menggantinya dengan nilai `default`. Tentu saja kita tidak ingin menampilkan kata `null` ke pada user.

```dart
// tanda ? pada tipe data menandakan bahwa variable tersebut bisa menyimpan nilai null
String? kata;
print(kata ?? 'Tidak boleh null');
```

### 3. If Else

If Else pada pemograman Dart hampir sama seperti bahasa pemograman yang lain.

```dart
int nilai = 6;
if (nilai < 6) { // jika nilai kurang dari 6
  print('Remedial');
} else if (nilai >= 6 && nilai <= 8) { // jika nilai lebih sama dari 6 dan kurang sama dari 8
  print('Cukup');
} else { // jika nilai lebih dari 8
  print('Sempurna');
}
```
