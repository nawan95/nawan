---
title: "Tidak Bisa Copy Paste ke WhatsApp Web di Firefox"
date: 2023-08-22T22:13:52+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["Firefox", "web", "internet", "WhatsApp"]
categories: Teknologi
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: "Sebuah bug membuat pengguna Firefox tidak dapat menyalin-tempel ke WhatsApp Web"
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: img/WhatsApp_Web.webp
    alt: Tangkapan layar halaman login WhatsApp Web. Halaman web ini memiliki header hijau dengan logo WhatsApp dan tulisan “WhatsApp Web” dalam huruf putih. Isi utama halaman adalah kotak putih dengan kode QR dan instruksi dalam bahasa Indonesia tentang cara menggunakan WhatsApp di komputer. Di bawah instruksi, ada tutorial video dengan tombol putar. Latar belakang halaman web adalah abu-abu terang.
    caption: WhatsApp Web menampilkan halaman untuk *login*.
---

Tadi saya ingin mengirimkan sebuah pranala ke sebuah postingan X (Twitter) ke teman saya melalui WhatsApp Web. Seperti biasa saya menggunakan teknik *copy-paste* dengan menyalin (*copy*) pranalanya kemudian menempelkannya (*paste*) ke kotak pesan percakapan di WhatsApp Web. Normalnya, pranala langsung muncul ke kotak pesan percakapan, tetapi saya mendapati bahwa ketika saya mencoba menempelkan pranala entah melalui klik kanan maupun `ctrl + V`, teks pranala yang telah saya salin tidak muncul di kotak percakapan WhatsApp Web.

Sekadar informasi, selama ini saya menggunakan peramban Firefox, baik di laptop maupun di Android. Awalnya saya curiga ini adalah masalah terkait *web compatibility* yang hanya terjadi di Firefox sehingga saya mencari petunjuk tentang masalah ini di repositori Github proyek [Webcompat](https://webcompat.com/).

Dari pencarian saya tersebut, saya menemukan saya menemukan *issu* nomor [#125920](https://github.com/webcompat/web-bugs/issues/125920). Sesuai dugaan awal saya, masalah ini tampaknya terkait dengan *web compatibility*. Masalah ini terjadi baik di Windows, MacOS, dan Linux. Masalah ini masih dalam investigasi sehingga belum jelas apa yang menyebabkan hal ini.

## Lalu, apa yang harus saya lakukan?
Jika kamu menggunakan peramban Firefox, kemungkinan besar kamu akan terdampak oleh *bug* ini. Namun seseorang pengguna bernama Pablo A di Superuser menemukan solusi yang dapat digunakan untuk sementara waktu hingga masalah atau *bug* ini diatasi.

Pertama, buka editor konfigurasi Firefox dengan mengetikkan `about:config` di bilah alamat atau *address bar*. Kamu mungkin akan mendapati halaman berisi peringatan bahwa mengubah pengaturan tingkat lanjut dapat mempengaruhi performa dan keamanan, cukup abaikan saja dan klik tombol "Terima risiko dan lanjutkan" karena di sini kita tahu apa yang ingin kita lakukan.

Pada bilah pencarian di laman `about:config` cari dengan kata kunci `clipboardevents`. Hasil pencarian akan memunculkan pengaturan dengan label `dom.event.clipboardevents.enabled`. Nonaktifkan pengaturan `dom.event.clipboardevents.enabled` dengan mengklik dua kali sehingga nilainya beubah dari sebelumnya `true` menjadi `false`. Agar perubahan yang kita buat menjadi efektif, mulai ulang Firefox dengan menutup dan membukanya kembali.

### Efek samping
Seperti yang saya sebutkan sebelumnya, solusi tersebut bersifat sementara atau [*workaround*](https://en.wiktionary.org/wiki/workaround#Noun) karena tidak memperbaiki akar masalahnya. Oleh karena itu perlu diingat kalau solusi ini juga punya beberapa efek samping. Pablo A menyebutkan bahwa mengubah `dom.event.clipboardevents.enabled` menjadi `false` membuat tidak bisa menempel (*paste*) teks ke Google Docs.

Jujur saja, sebagai pengguna Firefox isu-isu terkait *web compatibility* sering terjadi di Firefox. Misalnya seperti situs pendaftaran rekening Bank Mandiri yang tidak bisa diakses menggunakan Firefox di Android. Menurunnya *market share* Firefox dan dominasi Google Chrome serta banyaknya peramban yang menggunakan basis sumber terbuka Google Chrome (Chromium) membuat para pengembang web tidak perlu repot-repot untuk mengetes situs web mereka di Firefox, karena toh mayoritas pasti menggunakan Google Chrome atau peramban alternatif berbasis Chromium.

Terkait masalah tidak bisa *copy-paste* ke WhatsApp Web di Firefox, satu-satunya yang bisa dilakukan adalah dengan menggunakan solusi sementara di atas sambil menunggu pembaharuan Firefox yang berisi perbaikan atas masalah ini.