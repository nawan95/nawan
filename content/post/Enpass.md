---
title: "Enpass Password Manager"
date: 2024-05-19T12:24:27+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
categories: "Teknologi"
tags: ["password manager"]
showToc: true
TocOpen: true
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
---

Di dunia yang semakin serba daring ini, membuat kata sandi menjadi sebuah rutinitas. Belum lagi kata sandi yang dibuat tidak boleh sama. Tentu, kita dapat menggunakan kata sandi yang sama untuk setiap akun daring yang kita miliki, toh tidak ada yang melarang, tapi jika kata sandi tersebut bocor, ada risiko akun-akun yang menggunakan kata sandi yang sama untuk diretas. Maka tak heran jika banyak orang mengalami *password fatigue*. Salah satu solusinya adalah dengan menggunakan pengelola kata sandi baik dalam bentuk fisik maupun digital dan bicara soal perangkat lunak pengelola kata sandi, ada banyak pilihan seperti 1Password, Bitwarden, LastPass, NordPass, Dashlane, dan masih banyak lagi, semua dengan keunggulan masing-masing. Saya sendiri telah beberapa kali berganti pengelola kata sandi, awalnya menggunakan Bitwarden kemudian berganti ke KeePassXC, hingga baru-baru ini saya berpindah ke Enpass. 

**Enpass** merupakan pengelola kata sandi yang sepenuhnya luring dengan opsi sinkronisasi melalui layanan awan (*cloud*) pihak ketiga seperti Google Drive, OneDrive, atau Nextcloud yang bersifat opsional. Selain menggunakan layanan penyimpanan awan untuk sinkronisasi, sinkronisasi *peer-to-peer* seperti Syncthing atau Resilio Sync juga bisa digunakan untuk menyinkronkan kata sandi di Enpass. Sekilas, aplikasi ini sangat mirip dengan KeePassXC, perangkat lunak pengelola kata sandi yang selama ini saya pakai. Keduanya sama-sama merupakan perangkat lunak pengelola kata sandi yang sepenuhnya luring, selain itu Enpass dan KeePassXC di desktop juga sama-sama aplikasi *native* yang ditulis dengan bahasa C++ dan Qt untuk antarmuka pengguna dan dapat digunakan di Linux. Ini menarik mengingat mayoritas aplikasi dekstop (tidak hanya perangkat lunak pengelola kata sandi) dibuat menggunakan *framework* Electron. Di tulisan ini saya akan akan membagikan pengalaman saya menggunakan Enpass dan apa yang membedakannya dengan KeePassXC.

## Berbayar dan *proprietary*
Salah satu perbedaan paling mencolok adalah Enpass bukanlah aplikasi pengelola kata sandi gratis seperti halnya KeePassXC. Kamu harus merogoh kocek 2,21 USD per bulan atau sekitar 30 ribu rupiah. Selain dengan berlangganan, Enpass juga menawarkan opsi beli-putus dengan harga 110,99 USD atau sekitar 1,7 juta rupiah, memang lebih mahal di awal daripada berlangganan tetapi kamu tidak perlu mengeluarkan uang lagi tiap bulan/tahun. Hal penting lainnya adalah Enpass bukanlah perangkat lunak bebas dan sumber terbuka atau dengan kata lain *proprietary*. Hal ini sangat kontras dengan KeePassXC yang dilisensikan di bawah GNU General Public License versi 3. Saya merasa mengungkapkan fakta ini merupakan hal yang penting karena perangkat lunak sumber terbuka dapat dilihat sebagai nilai tambah.

## Sinkronisasi
Berbeda dengan KeePassXC, Enpass mendukung sinkronisasi kata sandi melalui layanan awan pihak ketiga seperti Google Drive, OneDrive, dan Nextcloud. Opsi sinkronisasi ini terintegrasi langsung di dalam aplikasi. Ini juga yang membedakannya dari KeePassXC maupun pengelola kata sandi lainnya. Seperti yang kita tahu, pengelola kata sandi yang memungkinkan sinkronisasi kata sandi biasanya menggunakan peladen terpusat yang berarti kata sandi kita berada di peladen tersebut dalam bentuk yang terenkripsi. Beberapa seperti Bitwarden memungkinkan pengguna untuk menghos sendiri peladen sinkronisasinya. Namun, hal ini juga berarti bahwa kita tidak bisa memilih cara untuk menyinkronisasikan kata sandi kita. Kita tidak bisa misalnya, menyinkronkan kata sandi di Bitwarden atau 1Password menggunakan sinkronisasi tanpa peladen (*peer-to-peer*) seperti Resilio Sync atau Syncthing.

## Opsi fitur keamanan terbatas
Salah satu fitur paling *powerful* dari KeePassXC adalah memungkinkan pengguna untuk memilih pengaturan fitur keamanan yang diinginkan. Saat membuat basis data baru, pengguna KeePassXC dapat memilih algoritma yang akan digunakan untuk mengenkripsi basis data KeePassXC, [*key derivation function*](https://en.wikipedia.org/wiki/Key_derivation_function), dan jumlah transformasi *hash*. Fitur ini sayangnya tidak tersedia di Enpass. Berdasarkan [sumber ini](https://support.enpass.io/docs/security-whitepaper-enpass/vault.html), Enpass sendiri menggunakan enkripsi AES dengan PBKDF2- HMAC-SHA512 sebagai algoritma *key derivation function*. Bagi mayoritas pengguna, absennya kustomisasi fitur keamanan di Enpass mungkin bukan masalah yang besar.

## SSH agent
Integrasi SSH *agent* menjadi salah satu fitur paling berguna bagi sysadmin atau *developer* di KeePassXC. Fitur ini memungkinkan KeePassXC menjadi *agent* SSH sehingga kunci SSH yang disimpan di KeePassXC dapat langsung digunakan untuk login melalui SSH. Sayangnya, Enpass tampaknya belum mendukung fitur ini.

## Tidak ada audit reguler
Ini menurut saya merupakan kekurangan terbesar dari Enpass adalah mereka tidak lagi mempublikasikan audit keamanan independen secara reguler. April 2022 adalah terakhir kali mereka mempublikasikan audit keamanan, itupun hanya aplikasi Enpass versi Windows saja yang mendapat audit. Fakta ini mungkin akan menjadi pertimbangan paling besar bagi sebagian orang sebelum memutuskan menggunakan Enpass. Memang benar bahwa KeePassXC juga tidak pernah mendapat audit keamanan independen secara reguler, tetapi setidaknya KeePassXC merupakan perangkat lunak sumber terbuka sehingga kode sumbernya dapat diakses dan diaudit oleh siapapun.

Itulah beberapa hal yang dapat saya sampaikan terkait pengalaman saya menggunakan Enpass sebagai pengelola kata sandi. Saya sendiri sampai tulisan ini terbit masih menggunakan Enpass. Tentunya dengan tidak menutup kemungkinan untuk beralih kembali ke KeePassXC atau pengelola kata sandi lainnya.
