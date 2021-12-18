# Dart

<p align="center">
    <img width="20%" src="https://raw.githubusercontent.com/bellshade/PHP/main/assets/images/logo.png"><br/>
    Part of Bellshade Project, managed by <a href="http://discord.gg/S4rrXQU"> WPU Discord Community</a> <br>
    WPU Community is the fastest growing software developer forum initiated by <a href="https://www.youtube.com/c/WebProgrammingUNPAS"> Mr. Sandhika Galih</a> <br>
    <a href="http://discord.gg/S4rrXQU">
        <img src="https://img.shields.io/discord/722002048643497994?logo=discord&logoColor=white&style=for-the-badge">
    </a>
    <img src="https://img.shields.io/github/license/bellshade/Dart?style=for-the-badge">
</p>

## Daftar isi

- [Dart](#dart)
  - [Daftar isi](#daftar-isi)
  - [Pendahuluan](#pendahuluan)
  - [Instalasi dan Setup](#instalasi-dan-setup)
    - [Menggunakan Windows](#menggunakan-windows)
    - [Menggunakan Linux](#menggunakan-linux)
    - [MacOS](#macos)
  - [Membuat project Dart](#membuat-project-dart)
  - [Mulai Belajar](#mulai-belajar)
  - [Menjalankan Kode](#menjalankan-kode)
  - [Berkontribusi](#berkontribusi)
  - [Quick Access](#quick-access)
      - [Basic](#basic)
    - [Lanjutan](#lanjutan)
    - [Algoritma](#algoritma)

## Pendahuluan

Selamat datang di repositori Bellshade Dart, di repositori ini berisi kumpulan dari berbagai macam contoh struktur data, algoritma dan komputasi matematika yang diimplementasikan dengan menggunakan bahasa pemrograman Dart. Materi yang disediakan disini menggunakan bahasa Indonesia agar mudah diikuti dan dipahami.

Semua orang bisa belajar dari repositori Dart ini, tersedia materi basic yang disediakan untuk pemula hingga materi lanjutan yang bisa dipelajari oleh expert. Tersedia juga materi tambahan seperti algoritma atau utilities yang diimplementasikan dalam bahasa Dart.

Untuk penjelasan mengenai bahasa pemrograman Dart silahkan baca selengkapnya di [Wiki repositori ini](https://github.com/bellshade/Dart/wiki) ya.

## Instalasi dan Setup

> Jika kamu pernah membuat aplikasi menggunakan Flutter dan flutter-sdk sudah terinstall, maka tidak perlu instal dart-sdk lagi karena sudah include didalam flutter-sdk 

Namun, jika kamu hanya ingin mencoba bahasa Dart secara sederhana, online dan tanpa instalasi bisa menggunakan website [dart.dev/#try-dart](https://dart.dev/#try-dart) atau di [dartpad.dev](https://dartpad.dev/?null_safety=true). Untuk di [dartpad.dev](https://dartpad.dev/?null_safety=true) kamu bahkan bisa mencoba running aplikasi Flutter sederhana lho!

Jika ingin memasang dart-sdk di komputer kamu, berikut adalah pilihan dan caranya:

### Menggunakan Windows
1. Install [chocolatey](https://chocolatey.org/)
2. Jalankan perintah ini di cmd:
```shell
choco install dart-sdk
```
3. Secara default, dart-sdk akan terpasang di `C:\tools\dart-sdk.`
4. Tunggu hingga proses install dart-sdk selesai

### Menggunakan Linux
1. Lakukan update sistem dan import source untuk dart-sdk
```shell
sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
```
2. Install dart-sdk dengan menjalankan perintah-perintah dibawah ini di terminal secara berurutan:
```shell
sudo apt-get update
sudo apt-get install dart
```
3. Tunggu hingga proses install dart-sdk selesai

### MacOS
1. Install [Homebrew](https://brew.sh/)
2. Jalankan perintah-perintah dibawah ini di terminal secara berurutan:
```shell
brew tap dart-lang/dart
brew install dart
```
3. Tunggu hingga proses install dart-sdk selesai

## Membuat project Dart

Ikuti langkah dibawah ini untuk membuat project Dart
1. Masuk ke direktori untuk menyimpan project dart, misalnya di `C:\projects\dart\` untuk windows, atau `$HOME/projects/dart/` untuk linux dan macOS
```shell
cd C:\projects\dart\

atau

cd $HOME/projects/dart/
```
2. Jalankan perintah dibawah untuk membuat project Dart. Ingat, ganti `'nama_project_kamu'` dengan nama project yang akan dibuat dan **jangan sertakan petiknya**.
```shell
dart create 'nama_project_kamu'
```
3. Masuk ke folder project yang telah dibuat(**jangan sertakan petiknya**)
```shell
cd 'nama_project_kamu'
```
4. Buka project yang sudah dibuat menggunakan menggunakan aplikasi editor kesukaan kamu. Contoh jika memakai Visual Studio Code:
```shell
code .
```

## Mulai Belajar

Mari belajar bahasa pemrograman Dart dengan materi basic yang sudah tersedia di repository ini. Berikut adalah tabel untuk urutan belajar dasar. 

| Langkah | Topik | Target Pembelajaran | Video Rujukan | Materi |
| :-----: | :---: | :-----------------: | :-----------: | :----: |
|   01    | Pengenalan bahasa pemograman Dart | Memahami program dasar Dart | [Video](https://youtu.be/uHyfQV0kbgo) | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/1_hello_world) |
|   02    | Tipe Data | Memahami perbedaan & macam-macam tipe data | [Video](https://youtu.be/BkN3r8yTjTA) | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/2_tipe_data) |
|   03    | Variabel | Memahami perbedaan & macam-macam variabel | [Video (Final & Const)](https://youtu.be/OiHp5BKnuiE) & [Video (Var & Dynamic)](https://youtu.be/7OuKnyhakcY) | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/3_variabel) |
|   04    | Operator & Logika Aritmatika | Memahami operasi perhitungan matematis | *belum ada* | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/4_operator_dan_logika_aritmatika) |
|   05    | Kondisi | Memahami Operator Perbandingan, Operator Logika dan Ekspresi Bersyarat | [Video](https://youtu.be/e9hYhWwo89k) | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/5_kondisi) |
|   06    | Perulangan | Memahami perbedaan & macam-macam perulangan | [Video](https://youtu.be/dhJuvzp-U68) | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/6_perulangan) |
|   07    | Input | Memahami cara kerja inputan user pada saat program dijalankan | *belum ada* | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/7_input) |
|   08    | Fungsi | Memahami macam-macam fungsi dan kegunaannya | [Video](https://youtu.be/XCJqCwV0Mao) | [Hello World](https://github.com/bellshade/Dart/tree/main/basic/8_fungsi) |

## Menjalankan Kode

Jika ingin menjalankan file Dart pada materi, bisa dijalankan dengan 2 cara ini:

**Dengan Shortcut:**

1. Buka file yang ingin dijalankan pada folder materinya
2. klik <kbd>F5</kbd> pada keyboard pada untuk menjalankan file Dart tersebut
3. Keluaran/Output akan muncul di `Debug Console` pada IDE atau Editor

**Dengan Perintah:**

1. Pada terminal/cmd, masuk ke folder materi
2. Ketikkan pada terminal/cmd:

```shell
dart basic/1_hello_world/hello_world.dart
```

3. Keluaran/Output akan muncul di terminal/cmd yang digunakan untuk menjalankan file tersebut

## Berkontribusi

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
