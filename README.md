# Dart

![license](https://img.shields.io/github/license/bellshade/Dart?style=for-the-badge)

Repositori ini berisi kumpulan dari berbagai macam contoh struktur data, algoritma dan komputasi matematika yang diimplementasikan dengan menggunakan bahasa pemrograman Dart.

## Instalasi dan Setup

Kalau kamu sudah menginstal flutter-sdk maka tidak perlu instal dart-sdk lagi

### Windows
1. install [chocolatey](https://chocolatey.org/)
2. jalankan perintah ini di cmd `choco install dart-sdk`

### Linux
```shell
sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update
sudo apt-get install dart
```

### MacOS
```
brew tap dart-lang/dart
brew install dart
```

## Membuat project pada Dart/Flutter

### Dart
```
dart create nama_project
```

### Flutter
```
flutter create nama_project
```

## Untuk Belajar

Jika ingin belajar bahasa Dart dari repositori ini, bisa langsung menggunakan folder-folder yang tersedia (Saat ini: `/basic`).

Contoh jika ingin menjalankan file Dart pada materi [Hello World](https://github.com/bellshade/Dart/tree/main/basic/1_hello_world) bisa dijalankan dengan 2 cara ini:

**Dengan Shortcut**

1. Buka file yang ingin dijalankan pada folder materinya
2. klik <kbd>F5</kbd> pada keyboard pada untuk menjalankan file Dart tersebut
3. Keluaran/Output akan muncul di `Debug Console` pada IDE atau Editor

**Dengan Perintah**

1. Pada terminal/cmd, masuk ke folder materi
2. Ketikkan pada terminal/cmd:

```bash
dart basic/1_hello_world/hello_world.dart
```

3. Keluaran/Output akan muncul di terminal/cmd yang digunakan untuk menjalankan file tersebut

## Untuk Berkontribusi

Dipersilahkan bila ingin melakukan open pull requets atau kontribusi pada repositori **Dart**. Sebelum itu, bacalah terlebih dahulu [peraturan dan pedomannya](CONTRIBUTING.md) yang dapat ditemukan pada `CONTRIBUTING.md`.

## Quick Access

Semua _script_ yang ada pada repositori ini, dapat diakses dengan cepat lewat link berikut:

#### Basic

- [Hello World](https://github.com/bellshade/Dart/tree/main/basic/1_hello_world)
- [Tipe Data](https://github.com/bellshade/Dart/tree/main/basic/2_tipe_data)
- [Variabel](https://github.com/bellshade/Dart/tree/main/basic/3_variabel)
- [Operator dan Logika Aritmatika](https://github.com/bellshade/Dart/tree/main/basic/4_operator_dan_logika_aritmatika)
- [Kondisi](https://github.com/bellshade/Dart/tree/main/basic/5_kondisi)
- [Perulangan](https://github.com/bellshade/Dart/tree/main/basic/6_perulangan)
- [Input](https://github.com/bellshade/Dart/tree/main/basic/7_input)
- [Fungsi](https://github.com/bellshade/Dart/tree/main/basic/8_fungsi)

### Lanjutan

- [Asynchronous](https://github.com/bellshade/Dart/tree/main/lanjutan/1_async)

### Algoritma

- [Conversion](https://github.com/bellshade/Dart/tree/main/algoritma/conversion)
