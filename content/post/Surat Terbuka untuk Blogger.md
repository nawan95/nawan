---
title: "Surat Terbuka untuk Narablog"
date: 2024-01-25T22:51:06+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: true
# weight: 1
# aliases: ["/first"]
tags:
- blog
- firefox
- openletter
categories: Sindiran
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: "Tolong pastikan postingan tutorial di blog kalian masih relevan. Saya membuang-buang waktu dengan mengikuti tutorial dari sebuah blog yang tidak lagi relevan."
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---

Hari ini saya mencari di Google cara mengembalikan tampilan lama Firefox. Saya sendiri tidak memiliki komplain dengan tampilan antarmuka Firefox saat ini. Anggap saja saya ingin bernostalgia dengan tampilan lama Firefox. Saya mengetikkan kata kunci pencarian di kolom pencarian Google dan mata saya tertuju pada situs blog dengan domain [rmdhnreza.my.id](https://rmdhnreza.my.id/how-to-restore-old-tabs-ui-firefox-89/ "https://rmdhnreza.my.id/how-to-restore-old-tabs-ui-firefox-89/"). Dari nama domainnya, tampaknya situs blog ini dikelola oleh orang Indonesia, walaupun postingan blognya berbahasa inggris.

Saya mengikuti tutorial di postingan blog itu dengan seksama. Awalnya tidak ada yang aneh, saya membuka about:config dan mencari `browser.proton.enabled`⁠ kemudian mengubah _value_ menjadi `false`⁠ sesuai arahan dari blog tersebut. Namun setelah saya mengikuti semua petunjuk di postingan itu dan memulai ulang Firefox, antarmuka Firefox tidak berubah sama sekali. Untuk memastikannya, saya mengecek ulang dari awal, tetapi hasilnya tetap sama. Dengan kata lain, tutorial itu sekarang sama sekali tidak bekerja.

Di sini saya mulai menduga-duga, apakah penulis blog itu memberikan informasi palsu? Namun saya tidak mau menuduh sebelum terbukti sebaliknya. Saya mencoba mencari tahu apa yang terjadi, sampai akhirnya saya menemukan [ini](https://bugzilla.mozilla.org/show_bug.cgi?id=1709425 "https://bugzilla.mozilla.org/show_bug.cgi?id=1709425") di Bugzilla. Itu adalah sebuah sebuah tiket di situs pelacak masalah Mozilla (Bugzilla) yang intinya bertujuan untuk menghapus tampilan antarmuka lama Firefox dari kode sumber Firefox. Dengan kata lain, pengguna tidak dapat lagi mengembalikan tampilan lama Firefox melalui `about:config`⁠. Pengguna Firefox yang ingin menggunakan tampilan antarmuka lama mau tidak mau harus mencari cara lain seperti dengan [memodifikasi](https://support.mozilla.org/en-US/kb/contributors-guide-firefox-advanced-customization "https://support.mozilla.org/en-US/kb/contributors-guide-firefox-advanced-customization") antarmuka Firefox melalui `userChrome.css` atau menggunakan [skrip khusus](https://github.com/black7375/Firefox-UI-Fix "https://github.com/black7375/Firefox-UI-Fix").

Oke saya tahu bahwa kalian mungkin berpikir kenapa tidak menghubungi pengelola blog dan malah menulis ini. Tentu saya bakal melakukan itu JIKA ada informasi kontak atau sejenisnya di blog itu. Saya telah mencari berkali-kali tetapi tidak menemukan informasi kontak yang dapat dihubungi atau formulir untuk mengirimkan pesan. Kalian bisa mengeceknya sendiri dan beritahu saya jika saya salah, tetapi saya sangat yakin tidak menemukannya.

Semua ini sangat menyebalkan bagi saya. Saya membuang-buang waktu mengikuti tutorial yang sudah tidak lagi relevan (saya tidak mau menyebutnya sebagai tutorial sampah karena tutorial itu sebelumnya pernah berfungsi sampai apa yang dilakukan Mozilla). Apalagi mengingat blog tersebut muncul di halaman pertama pencarian Google. Pada akhirnya saya hanya memiliki dua permintaan kepada semua orang yang menulis blog: tolong selalu perbaharui postingan postingan blogmu terutama postingan yang berisi tutorial untuk memastikan postingan blogmu tetap relevan dan pastikan bahwa setidaknya ada satu alamat email yang tercantum di blog sehingga pembaca dapat memberitahumu jika ada postinganmu yang butuh diperbaharui agar relevan.