---
title: "Kenapa kamu Harus Mengaktifkan Pengalihan HTTPS?"
date: 2023-08-14T13:45:18+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["iklan", "telkomsel", "http", "web", "kominfo"]
categories: Teknologi
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: "Selama ISP masih menginjeksi iklan ke situs web, sebaiknya aktifkan HTTPS."
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: img/HTTPS_and_padlock_in_website_address_bar.jpg
    alt: Gambar realistis dari bilah alamat browser web. Bilah alamat berwarna putih dengan ikon gembok hijau di sisi kiri. Teks di bilah alamat menunjukkan ‘https://’ dengan font hitam. Latar belakang berwarna abu-abu terang..
    caption: Selalu pastikan ikon gembok hijau ada di bilah alamat agar tidak muncul iklan dari ISP. Foto oleh Santeri Viinamäki, [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0), via Wikimedia Commons.
---

Saya menemukan perspektif baru setelah membaca artikel blog 1MB Club berjudul “_Consider Disabling HTTPS Auto Redirects_”. Sesuai judulnya, artikel itu membeberkan beberapa alasan kenapa sebaiknya kamu tidak memaksa pengunjung situs untuk mengakses situsmu dengan koneksi terenkripsi atau HTTPS entah melalui pengalihan HTTPS otomatis atau pun _[HTTP Strict Transport Security](https://en.wikipedia.org/wiki/HTTP_Strict_Transport_Security "https://en.wikipedia.org/wiki/HTTP_Strict_Transport_Security")_ (HSTS).

Saya tahu itu adalah _unpopular opinion_. Banyak sumber-sumber menyebutkan bahwa HTTPS itu sangat penting dan sebaiknya pengelola situs web mengaktifkan pengalihan HTTPS, atau bahkan HSTS kalau diperlukan. Ditambah banyak peramban yang memunculkan peringatan saat pengguna mengakses situs tanpa enkripsi.

Menurut tulisan itu, HTTPS memang penting tetapi sebaiknya tidak memaksa pengunjung situs untuk mengakses situs menggunakan koneksi terenkripsi dengan tidak mengaktifkan pengalihan HTTP ke HTTPS, terutama untuk situs sederhana yang sepenuhnya statis. Salah satu justifikasinya adalah inisiasi (handsake) HTTPS yang terjadi setiap mengakses situs HTTPS sangat berat. Hal ini membuat waktu terhubung ke situs yang menggunakan HTTPS menjadi lebih lambat daripada HTTP.

Justifikasi tersebut memang tidak sepenuhnya salah, faktanya HTTP/1.1 dan HTTP/2 dengan enkripsi TLS memang [lebih lambat](https://www.keycdn.com/blog/https-performance-overhead) daripada HTTP tanpa enkripsi. Namun versi terbaru dari HTTP yaitu [HTTP/3](https://en.wikipedia.org/wiki/HTTP/3 "https://en.wikipedia.org/wiki/HTTP/3") yang menggunakan protokol [QUIC](https://en.wikipedia.org/wiki/QUIC "https://en.wikipedia.org/wiki/QUIC") alih-alih TCP [diklaim 3 kali lebih cepat](https://en.m.wikipedia.org/wiki/HTTP/3) daripada situs HTTP/1.1 yang mayoritas tanpa enkripsi (mengingat di versi 1.1, TLS/SSL bersifat opsional).

Artikel blog 1MB Club itu juga merujuk situs [https://doesmysiteneedhttps.com/](https://doesmysiteneedhttps.com/) yang berisi argumen kenapa HTTPS itu sangat penting dan menyebut walaupun beberapa poin di situs itu benar, tetapi mayoritas argumen [https://doesmysiteneedhttps.com/](https://doesmysiteneedhttps.com/) masih banyak didasarkan pada taktik "menjual ketakutan".

Mungkin [https://doesmysiteneedhttps.com/](https://doesmysiteneedhttps.com/) memang masih bersandar pada taktik menjual ketakutan untuk mendukung argumennya dengan klaim-klaim yang dilebih-lebihkan, tetapi tidak semuanya. Argumen kedua di situs itu adalah argumen menolak HTTP tanpa enkripsi yang sejauh ini paling realistis, setidaknya demikian yang terjadi di Indonesia.

Entah kapan hal ini terjadi tetapi Telkomsel, operator plat merah yang saya gunakan menginjeksi iklan ke laman web apapun yang diakses tanpa enkripsi HTTPS. Saya belum mengkonfirmasi langsung ke Telkomsel perihal ini tetapi kejadian ini memang benar adanya. Namun, iklan tidak muncul saat mengakses situs yang terenkripsi HTTPS. Saya tidak tahu apakah praktik menginjeksi iklan ke situs web ini juga dilakukan oleh operator selular lain di Indonesia, tetapi [sebuah diskusi](https://l.opnxng.com/r/indonesia/comments/8wb2ty/telkomsel_caught_injecting_ads_into_pages/) di Reddit menyebutkan bahwa praktik ini dilakukan oleh semua operator selular di Indonesia, termasuk Telkom.

Praktik ini, selain mengganggu pengunjung situs, juga merugikan pemilik situs karena "lapak" mereka tiba-tiba dipasangi "baliho" tanpa izin. Bagi pemilik situs yang membuka slot iklan, praktik menginjeksi iklan oleh operator selular ini jelas mempunyai dampak ekonomi secara langsung. Sedangkan pemilik situs yang membebaskan situsnya dari iklan walaupun tidak mengalami kerugian materill, tetap saja ada kerugian moral di mana otonomi pemilik situs dilanggar oleh pihak lain secara sewenang-wenang. Hal ini diperparah dengan fakta bahwa pemerintah Indonesia, dalam hal ini Kementerian Komunikasi dan Informatika atau Kominfo, mengabaikan praktik culas yang dilakukan oleh operator selular di Indonesia ini.

Memang, saya setuju pada poin-poin di artikel blog 1MB Club itu bahwa HTTPS tidak perlu bagi situs yang sepenuhnya statis. Jika kamu mempunyai situs atau blog yang sepenuhnya statis, entah dengan menulis situs secara manual atau menggunakan SSG seperti Hugo dan Jekyll, kamu tidak perlu mengaktifkan pengalihan HTTP ke HTTPS.

Namun, jika kamu tidak rela situsmu diinjeksi dengan iklan oleh PJI atau pihak lain, maaf harus mengatakannya tetapi pilihannnya cuma satu, menggunakan TLS dan mengaktifkan pengalihan HTTPS.

* * *

**N.B**. Opsi lain adalah dengan meminta Kominfo untuk menindak tegas praktik menginjeksi iklan yang dilakukan operator selular. Namun mengingat sepak terjang Kominfo, saya rasa ini adalah opsi yang paling akhir.

Ngomong-ngomong, situs ini mengaktifkan pengalihan ke HTTPS dan menerapkan HSTS lengkap dengan dukungan HTTP/3 QUIC untuk peramban yang mendukungnya.