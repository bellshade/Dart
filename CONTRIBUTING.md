# Kontribusi

**Kontributor**

Kami sangat senang anda telah ikut berkontribusi dalam implementasi algoritma, struktur data atau memperbaiki error serta merilis implementasi materi belajar bahasa pemrograman Dart.

Semua orang boleh ikut berkontribusi pada repository ini, dengan ketentuan sebagai berikut:

- Hasil pekerjaan anda adalah buatan anda sendiri dan tidak ada hak cipta dari orang lain, jika kami menemukan kesamaan maka tidak kami `merge`.
- Hasil kerja anda akan berlisensi [MIT](LICENSE) ketika permintaan pull anda sudah di merged
- Hasil kerja anda wajib mengikuti standar dan style koding dari kami (lihat bagian [Standar penulisan](#standar-penulisan))
- Sebelum melakukan kontribusi, usahakan membuat [issue](https://github.com/bellshade/Dart/issues) terlebih dahulu agar tidak bentrok pengerjaan antar kontributor.
- Hindari penggunaan library/package pada koding (jika dibutuhkan, silahkan diskusi di [issue](https://github.com/bellshade/JavascriptAlgorithm/issues))

## Kategori yang ada

**1. Basic Learning**

Basic learning adalah kumpulan implementasi kode materi mendasar dan fundamental untuk pemrograman Dart. Dikemas dengan keterangan kode yang mudah di mengerti sehingga bisa dijadikan referensi untuk kalian yang belajar pemrograman Dart.

> Semua implementasi kode untuk Basic Learning bisa ditemukan di **`/bin/basic`** 

**2. Lanjutan**

Kumpulan implementasi kode lanjutan dan fitur unik yang ada pada bahasa pemrograman Dart. Jika belum menuntaskan materi basic, kami sarankan untuk mempelajari materi basic terlebih dahulu. 

> Semua implementasi kode untuk Basic Learning bisa ditemukan di **`/lib/lanjutan`** 

**3. Struktur Data**

Struktur data adalah cara penyimpanan, penyusunan, dan pengaturan data yang kompleks yang dibuat agar program dapat menggunakan data tersebut dengan efisien.

> Semua implementasi kode untuk Basic Learning bisa ditemukan di **`/lib/struktur_data`** 

**4. Algoritma**

Algoritma adalah langkah-langkah untuk menyelesaikan suatu pekerjaan dimana terdiri dari 3 bagian utama, yaitu:

- Input/masukan, sebelum menjalankan sebuah algoritma maka hal yang pertama harus dilakukan adalah menerima masukan. Input dapat berasal dari pengguna ataupun dari langkah sebelumnya.
- Proses, bagian utama dari algoritma yang melakukan pengolahan input yang akan menghasilkan output.
- Output/keluaran, output adalah hasil dari bagian proses. Output ini juga bisa digunakan untuk langkah selanjutnya (jika masih ada).

Algoritma harus dikemas sedemikian rupa sehingga memudahkan pembaca untuk memasukkannya ke dalam program yang lebih besar.

Algoritma harus memiliki:

- memiliki nama _class_ dan fungsi intuitif yang memperjelas tujuannya bagi pembaca
- fleksibel untuk mengambil nilai input yang berbeda
- memiliki dokumentasi penjelasan yang jelas dan/atau URL ke materi sumber
- gunakan hasil kembalian / _return_ daripada langsung mencetak ke layar

> Semua implementasi kode untuk Algoritma bisa ditemukan di **`/lib/algoritma`** 

## Standar Penulisan

1. Standar Penulisan Pada IDE atau Editor 
Gunakan standar penulisan yang sudah ditentukan oleh Dart, lalu ubah recommended settings untuk Dart untuk menambah dan mengubah beberapa baris agar menjadi seperti ini:

```json
"dart.lineLength": 150, // <- tambahkan baris ini
  "[dart]": {
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.rulers": [
      150 // <- ubah menjadi 150
    ],
   ...
```
2. Memberikan komentar
   - `//` digunakan untuk menjelaskan alur kode atau algoritma.
   - `///` digunakan untuk membuat docs didalam kode untuk menjelaskan kegunaan dari fungsi, class, atau variabel agar bisa memunculkan _pop-up_ docsnya didalam IDE atau Editor secara dinamis.

3. Struktur Folder
Khusus untuk kontributor, gunakan struktur folder yang sudah disiapkan seperti dibawah ini:
   - Folder `bin` digunakan untuk menyimpan kode top-level untuk menjalankan materi yang anda buat.
   - Folder `lib` digunakan untuk menyimpan materi-materi yang disimpan.
   - Struktur folder yang ada didalam `bin` dan `lib` **wajib sama**.
   - Folder `test` digunakan untuk melakukan testing kode dari materi dart yang dibuat.

Untuk dokumentasi lengkap mengenai standar penulisan bisa dilihat di link berikut :
[1. Overview Bahasa Dart](https://dart.dev/guides/language/effective-dart)
[2. Gaya Penulisan Dart](https://dart.dev/guides/language/effective-dart/style)
[3. Pembuatan Dokumentasi Kode Dart](https://dart.dev/guides/language/effective-dart/documentation)
[4. Penggunaan Bahasa Dart](https://dart.dev/guides/language/effective-dart/usage)
[5. Penulisan Konsisten Pada Bahasa Dart](https://dart.dev/guides/language/effective-dart/design)


## Berkontribusi

**Pull request yang baik**

- lakukan fork pada repository ini
- usahakan fork anda sudah update sesuai dengan repository asli [bellshade/Dart](https://github.com/bellshade/Dart). Jika belum update, silahkan gunakan fitur `fetch and merge` yang ada di github.
- setelah melakukan fork anda dibebaskan untuk mengubah atau menambah kode
  - untuk pull request "mengubah" diusahakan anda menerapkan kode yang lebih baik, mudah dan efisien dari segi performa, ukuran kode, dan sebagainya.
- setelah mengubah, menambah, atau perbaikan dokumentasi, usahakan anda membuat branch baru

```bash
git checkout -b <branch_name>
git add .
git commit -m "add: menambahkan algoritma baru"
```

- lakukan push ke branch anda dan kemudian silahkan open pull request

**Saran pesan commit**

- `add` untuk menambah kode atau tambahan lainnya
- `fix` untuk mengubah kode yang sudah ada atau memperbaiki
- `docs` untuk mengubah atau membuat dokumentasi
- `style` untuk mengubah atau memperbaiki style kode untuk contohnya bisa dilihat pada commit yang diatas

pull request akan `merged` jika:

- mengikuti standar dan arahan dari `CONTRIBUTING.md`
- lulus test dan cek dari beberapa test yang sudah kami siapkan

**Saran pesan Pull Request**

Gunakan template pesan pull request yang sudah disediakan untuk repository Dart di [sini](https://github.com/bellshade/Dart/blob/main/.github/pull_request_template.md).

**Tambahan**

- jika ada kendala atau masalah dalam pull request, anda bisa laporkan masalah pada [issue](https://github.com/bellshade/Dart/issues)
- jika ada test yang tidak lewat atau gagal, kami akan mengecek kembali perubahan.

untuk pull request kami sarankan untuk menjelaskan secara detail yang anda ubah atau tambahkan, dan bersikap sopan, serta selalu berterima kasih, itu salah satu bentuk tata krama yang baik terhadap sesama contributor dan programmer lainnya. Terima kasih sudah berkontribusi di **Bellshade/Dart**