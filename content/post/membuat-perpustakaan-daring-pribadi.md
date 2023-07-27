---
title: "Membuat Perpustakaan Daring Pribadi dengan Calibre-web"
date: 2023-07-27T11:01:51+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: true
# weight: 1
# aliases: ["/first"]
tags: ["insert your tag here"]
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: ""
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: img/calibre-web_main_screen.png
    alt: Tampilan antarmuka Calibre-web dengan tema default menampilkan koleksi-koleksi buku elektronik.
    caption: Tampilan antarmuka Calibre-web dengan tema default menampilkan koleksi-koleksi buku elektronik. Lisensi GPL v3.
---

Kita mungkin sudah tidak asing lagi dengan perpustakaan pribadi luring. Perpustakaan ini biasanya mengoleksi buku-buku fisik. Namun, seperti yang kita ketahui bahwa sekarang buku tidak hanya hadir dalam bentuk fisik tetapi juga dalam bentuk digital atau yang biasa kita sebut sebagai buku elektronik (*ebook*). Buku elektronik sendiri memiliki berbagai macam format seperti PDF, EPUB, MOBI, CBR, dan banyak lagi. Lalu bagaimana menyimpan dan mengelola buku elektronik ini? Dalam tutorial ini akan dijelaskan bagaimana membuat perpustakaan pribadi daring menggunakan perangkat lunak [Calibre-Web](https://github.com/janeczku/calibre-web).

Calibre-Web adalah perangkat lunak gratis dan sumber terbuka untuk mengelola buku elektronik. Calibre-Web dapat dipasang di dalam [peladen](https://id.wikipedia.org/wiki/peladen) dan diakses melalui jaringan internet. Perangkat apapun dapat menjadi peladen, termasuk Raspberry Pi. Misalnya, kita dapat memasang Calibre-Web di Raspberry Pi yang berada di rumah dan terkoneksi dengan internet rumah sehingga orang lain yang menggunakan jaringan internet yang sama dapat mengakses Calibre-Web. Perlu dicatat bahwa Calibre-Web menggunakan basis data yang dibuat dengan Calibre, sebuah perangkat lunak pengelola dan pembaca buku elektronik.

## Apa saja?

Sebelum bisa memasang Calibre-Web, persiapkan beberapa hal berikut ini:
1. Koneksi internet (untuk mengunduh Calibre-Web)
2. Akun di NearlyFreeSpeech.Net (jika belum memiliki)
3. Calibre, sebuah aplikasi manajemen buku elektronik
4. Koleksi buku (wajib)

## Bagaimana?
### Menambahkan buku ke Calibre

1. Buka aplikasi Calibre di komputer.

2. Saat pertama kali membuka Calibre, akan muncul jendela Calibre *Welcome Wizard*. Jendela ini akan memandumu untuk membuat perpustakaan Calibre. Perpustakaan Calibre adalah direktori atau folder tempat semua buku dan basis data Calibre disimpan.
{{< figure align=center alt="Sebuah jendela yang menampilkan antarmuka untuk memilih bahasa dan direktori tempat buku elektronik berada." caption="Ini adalah tampilan awal mula saat pertama kali membuka Calibre." src="/img/calibre-welcome.png" >}}

3. Jika direktori atau folder yang kita pilih sudah terdapat buku elektronik, Calibre akan langsung mengenali dan mengekstrak basis data, buku elektronik akan langsung muncul di Calibre. Namun, jika masih kosong, kita harus menambahkannya secara manual. Caranya dengan mengklik tombol bertuliskan “tambahkan buku” yang berada di sisi kanan atas.
{{< figure align=center alt="Sebuah jendela yang menampilkan antarmuka utama Calibre. Tampak daftar koleksi buku elektronik dan ikon menu di sebelah atas." caption="Untuk menambahkan buku ke Calibre, klik tombol yang diberi kotak merah." src="/img/calibre-add-book.png" >}}

4. Jika, tidak ingin menambahkannya satu per satu, terutama jika kita punya banyak koleksi buku elektronik, silakan jadikan satu koleksi ke dalam format ZIP atau RAR, kemudian ekspor melalui Calibre dengan mengklik segitiga terbalik kecil di sebelah kanan tombol untuk menambahkan buku di Calibre.
{{< figure align=center alt="Sebuah jendela yang menampilkan antarmuka utama Calibre. Tampak daftar koleksi buku elektronik dan ikon menu di sebelah atas. Terdapat kotak merah sebagai petunjuk." caption="Untuk menambahkan banyak buku sekaligus yang telah dijadikan satu menjadi ZIP atau RAR ke Calibre, klik segitiga terbalik yang diberi kotak merah." src="/img/Calibre-add-multi-book.png" >}}

5. Tambahkan metadata ke dalam buku (opsional)
Perangkat lunak Calibre biasanya secara otomatis menambahkan metadata seperti judul dan nama penulis dari buku elektronik yang kita tambahkan. Jadi kita tidak perlu menambahkannya secara manual. Namun, terkadang Calibre tidak bisa menambahkan metadata secara otomatis sehingga kita harus menambahkannya secara manual. Langkah ini bersifat opsional, kita bisa menambahkannya melalui Calibre-Web nantinya.

### Membuat akun di NearlyFreeSpeech.Net dan membuat situs

1. Buat akun keanggotaan yang oleh NearlyFreeSpeech.Net disebut sebagai *membership* di NearlyFreeSpeech.Net (selanjutnya disebut NFSN) jika belum memiliki akun. Kamu akan mendapatkan saldo gratis sebesar 25 sen. [Klik di sini untuk membuat akun di NFSN](https://www.nearlyfreespeech.net/signup). Silakan ikuti langkah-langkah di sana.

2. Buat akun pribadi untuk mengelola saldo dan situs. Akun ini berbeda dengan akun keanggotaan atau *membership* pada langkah pertama.

3. Setelah membuat akun pribadi, kamu bisa menambahkan saldo jika ingin. Namun kita bisa melewati langkah ini karena secara otomatis mendapat saldo 25 sen.

4. Buat situs dengan mengklik tombol **Sites** di menu sebelah atas.

5. Klik "**Create a New Site**" dan ikuti langkah-langkah yang ada.

### Mengunggah buku elektronik ke NFSN

1. Setelah selesai akan muncul tampilan *control panel*. Dari sini, akan terdapat informasi mengenai nama pengguna dan kata sandi untuk SSH/SFTP beserta alamat *hostname* untuk menghubungkan ke SSH atau SFTP. Gunakan informasi ini untuk login ke SFTP. Kita bisa menggunakan antarmuka baris perintah dengan utilitas *sftp* atau bisa juga melalui antarmuka grafis. Saya sendiri merekomendasikan FileZilla untuk menghubungkan ke SFTP.

2. Isikan alamat hostname SSH/SFTP ke kolom berlabel mesin. Jangan lupa masukkan nama pengguna dan kata sandi. Kolom *port* kita isikan dengan 22. Kemudian setelah semua terisi, klik KoneksiCepat.

3. Setelah terhubung ke SFTP menggunakan FileZilla, kita bisa mulai mengupload semua buku yang ada di dalam perpustakaan Calibre beserta dengan file basis data dengan ekstensi `.db`.  Jangan lupakan file basis data tersebut.

### Memasang Calibre-Web
1. Login ke SSH di terminal. Dengan format `ssh namapengguna@ssh.spf.nearlyfreespeech.net`.

2. Saat diminta memasukkan kata sandi, masukkan kata sandi yang sama seperti untuk terkoneksi ke SFTP.

3. Setelah terhubung, pindah ke direktori `/home/protected`.
```
cd /home/protected
```

4. Buat Python *virtual environtment* dan kemudian aktifkan **virtual environtment*
```
python -m venv calibreweb
source calibreweb/bin/activate
```

5. Pasang Calibre-Web menggunakan `pip`
```
pip install calibreweb
```
Ini secara otomatis akan memasang semua dependensi yang dibutuhkan guna menjalankan Calibre-Web.

6. Kembali ke direktori `/home/protected`
```
cd  ..
```

7. Buat *daemon script*
```
nano run-cps.sh
```
Kemudian isikan skrip berikut:
```
#!/bin/sh
exec /home/protected/calibreweb/bin/cps
```
Simpan dengan mengeklik `Ctrl + X` kemudian tekan `y`.

8. Buat *daemon script* yang telah kita buat agar bisa dieksekusi
```
chmod a+x run-cps.sh
```

### Jalankan daemon dan buat proxy
1. Kembali ke *control panel* NFSN dan buat *daemon*. Pada kolom tag isikan nama aplikasi yang dijalankan yaitu "calibreweb". Kemudian pada kolom "*command line*" dan "*working directory*" masing-masing isikan `/home/protected/run-cps.sh` dan `/home/protected`. Biarkan yang lainnya kemudian klik tombol *Add Daemon*.
2. Sekarang Calibre-Web seharusnya sudah berjalan di localhost pada port 8083. Namun, Calibre-Web belum bisa diakses melalui browser. Agar bisa diakses dari luar, buat *proxy* melalui *control panel*. Biarkan pilihan *protocol* dan kolom Base URI dan Document Root. Hanya ganti kolom port menjadi 8083 kemudian klik *Add Proxy*.


Sekarang seharusnya Calibre-Web sudah dapat diakses melalui alamat di box **Site Name and Alias** dengan alamat *.nfshost.com.
