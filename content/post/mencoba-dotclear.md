---
title: "Mencoba Dotclear"
date: 2026-06-12T23:23:58+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
categories: "Meta"
tags: ["dotclear","blog","hugo","wordpress","CMS","content management system"]
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: "Saya menemukan Dotclear, mencobanya, dan sekarang saya bingung apakah harus mengganti blog ini dengan blog berbasis Dotclear."
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: img/dotclear-administrator-page.png
    alt: Halaman administrasi Dotclear yang menampilkan antarmuka penyuntingan postingan.
    caption: Tampilan antarmuka administrasi di Dotclear.
---

> *[If it ain't broke, don't fix it](https://en.wiktionary.org/wiki/if_it_ain%27t_broke,_don%27t_fix_it)*.

Begitulah kata-kata bijak yang sering saya dengar. Namun jujur saja keinginan untuk menggunakan perangkat lunak blog seperti Wordpress, [Ghost](https://ghost.org), atau [WriteFreely](https://writefreely.org) selalu ada. Alasannya karena alur kerja mulai dari menulis sampai menerbitkan tulisan di perangkat lunak tersebut yang jauh lebih ramah pengguna daripada perangkat lunak Hugo yang saya gunakan saat ini. Saat ini untuk memposting tulisan ke blog ini, saya harus menuliskannya menggunakan teks editor seperti Windows Notepad menggunakan bahasa markah Markdown, lalu saya menyimpan versi final dari postingan tersebut menggunakan perangkat lunak Fossil sehingga postingan tidak hilang karena tidak sengaja terhapus, kemudian saya harus menjalankan skrip bash untuk membangun berkas postingan markdown tersebut menjadi file HTML dan kemudian dikirimkan ke *server* dengan [SFTP](https://en.wikipedia.org/wiki/SFTP). Sebenarnya alur kerjanya sedikit lebih sederhana saat saya menggunakan [Github](https://github.com) karena ada sedikit otomatisasi melalui Github Action.

Ribet bukan?

Sampai kemudian beberapa waktu lalu saya menemukan Dotclear, *content management* system yang ditujukan khusus untuk blog. Saat saya mengunjungi situs resminya, saya dibuat bingung karena situsnya berbahasa Prancis tanpa ada opsi untuk mengubah ke bahasa lain. Beruntung repositori mereka yang dihos di Codeberg tidak menggunakan bahasa Prancis. Ternyata Dotclear ini memang berasal dari Prancis dan digunakan oleh instansi pemerintah di Prancis.

Tidak seperti Wordpress atau Drupal, Dotclear merupakan *content management system* yang berfokus pada pengalaman menulis dan menerbitkan blog alih-alih membuat laman web atau *e-commerce*. Jadi dibandingkan dengan CMS yang saya sebut sebelumnya, Dotclear minim fitur-fitur yang tidak terlalu penting untuk sebuah blog. Saat masuk ke halaman administrasi, misalnya, tata letak antarmukanya mengingatkan saya dengan Blogger, *platform* blog milik Google.

Beberapa fitur yang menurut saya menarik dan jarang ditemukan di *platform* lain:

* Dukungan [Webmention](https://indieweb.org/Webmention), standar web yang memungkinkan situs blog untuk berkomunikasi satu sama lain. Dotclear juga mendukung *trackback* dan *pingback* walaupun kedua protokol tersebut sebenarnya sudah usang serta rawan spam dan isu keamanan.
* Dukungan [*Text and Data Mining Reservation Protocol*](https://www.w3.org/community/reports/tdmrep/CG-FINAL-tdmrep-20240510/), ini adalah protokol yang ditujukan untuk memberitahu pelaku *scraping* web apakah mereka perlu meminta izin kepada pemilik konten dan bagaimana caranya.
* Fitur blogroll bawaan yang memungkinkan pemilik blog menambahkan pranala ke blog-blog lain yang mereka ikuti atau sukai.

Selebihnya, Dotclear ini seperti *platform* blog lain.

Ngomong-ngomong, blog berbasis Dotclear yang sedang saya coba bisa dilihat dengan mengunjungi pranala https://nawan.serv00.net/.

Blog utama saya menggunakan Hugo dan jujur saja saya kadang iri dengan mereka yang menggunakan Wordpress atau Ghost. Apalagi [teman](https://rmdzn.web.id/blog/pindah-ke-htmly) saya yang juga memiliki blog tahun lalu mengumumkan perpindahan dari Hugo ke HTMLy. Blog berbasis *static site generator* seperti Hugo menurut pengalaman saya tidak rewel kalau soal perawatan (*maintenance*). Namun di sisi lain, membuat postingan dengan *static site generator* cukup ribet.

Jadi apakah saya akan mengganti blog ini dengan Dotclear? Entahlah.
