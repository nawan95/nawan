---
title: "Kenapa Kartu Uang Elektronik Tidak Terintegrasi Dengan GPN?"
date: 2023-08-10T18:10:43+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["BRI", "kartu uang elektronik", "e-money", "GPN", "QRIS", "dompet elektronik", "e-wallet"]
categories: ["Sindiran", "Teknologi"]
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: "Kartu uang elektronik atau e-money menawarkan pembayaran yang praktis, tapi semua terasa sia-sia tanpa integrasi ke Gerbang Pembayaran Nasional."
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: img/kartu-uang-elektronik.jpg
    alt: Kartu uang elektronik Brizzi yang dikeluarkan oleh Bank BRI. Kartu didominasi oleh warna biru dengan gambar siluet pemuda bermain basket.
    caption: Kartu uang elektronik yang Brizzi milik saya.
---

Saya membeli kartu uang elektronik pada 2020 tak lama sebelum uji coba publik KRL Jogja-Solo. Awalnya saya membeli kartu uang elektronik dari BRI untuk menjajal KRL. Saya membeli kartu uang elektronik BRI di BRI KCP Klaten Selatan dengan harga 20 ribu rupiah dan belum termasuk saldo uang elektronik. Waktu itu, saya tidak mengira bahwa saya akan menggunakan kartu uang elektronik tersebut untuk membayar di kasir Alfamart. Sebuah keputusan yang tidak saya sesali. Jujur saja, pembayaran menggunakan kartu uang elektronik sangat praktis dan efisien daripada kartu debit bahkan QRIS. Namun, perlu dicatat bahwa _merchant_ harus memiliki mesin EDC yang sama dengan penerbit kartu uang elektronik. Di sinilah masalah dimulai.

Bagi yang belum tahu, kartu uang elektronik atau kartu _e-money_ atau juga disebut dengan kartu nilai tersimpan ( _stored-value card_ ) untuk membedakannya dengan dompet elektronik atau _digital wallet_ yang memiliki karakteristik yang sama, adalah uang elektronik berbentuk kartu. Berbeda dengan dompet elektronik yang nilai uang disimpan di peladen atau _server_ yang dikelola oleh perusahaan finansial atau bank, nilai uang di kartu uang elektronik disimpan secara digital di dalam chip yang tertanam di dalam kartu. Ini membuat kartu uang elektronik dapat digunakan tanpa akses internet. Selain itu karena nilai uang disimpan di dalam chip kartu uang elektronik, kita tidak perlu mengisi formulir data diri atau melampirkan KTP untuk mendapatkan kartu uang elektronik ini sehingga kartu ini tak ubahnya seperti uang tunai yang bersifat anonim.

Dengan kelebihan-kelebihan yang saya sebutkan di atas, menggunakan kartu uang elektronik untuk pembayaran di toko sebenarnya sangat praktis, cukup tap kartu ke mesin EDC dan pembayaran selesai. Tidak perlu repot-repot memasukkan PIN setiap bertransaksi seperti kartu debit atau dompet elektronik karena nilai uang disimpan di dalam chip kartu dan bersifat anonim. Namun, fungsi kartu uang elektronik ini sebagai alat pembayaran yang praktis dan efisien terkendala oleh masalah interkoneksi dan interopabilitas yang disebabkan oleh fakta bahwa kartu uang elektronik belum terintegrasi dengan GPN. Hal ini memunculkan satu pertanyaan di benak saya: Kenapa kartu uang elektronik ini belum mendukung GPN?

Bagi yang belum tahu, GPN adalah singkatan dari Gerbang Pembayaran Nasional. Ini adalah sistem yang terdiri atas Standar, _Switching_ dan _Services_ yang dibangun untuk mengintegrasikan berbagai instrumen dan kanal pembayaran secara nasional. GPN inilah yang memungkinkan alat pembayaran elektronik seperti kartu debit digunakan di mesin EDC bank apapun dengan biaya rendah yang dibebankan ke penjual (_merchant_).  Sebelum ada GPN, setiap transaksi kartu debit dapat diproses oleh tiga _switching_ berbeda; bank (jika kartu debit dan EDC dikeluarkan oleh bank yang sama), perusahaan _switching_ dalam negeri (Alto, ATM Bersama, Prima), dan perusahaan _switching_ luar negeri (Visa, Mastercard). Transaksi daring menggunakan kartu debit biasanya diproses oleh perusahaan _switching_ luar negeri kecuali kita menggunakan layanan debit online milik bank seperti BCA OneKlik atau BRI Direct Debit yang mana hanya bisa digunakan jika kartu debit dikeluarkan oleh bank tersebut.

Namun GPN ini tidak hanya terbatas untuk kartu debit melainkan alat pembayaran lain seperti dompet elektronik (_e-wallet_) melalui QRIS. QRIS ini juga merupakan bagian dari GPN yang memungkinkan kode QR pembayaran yang diterbitkan oleh dompet elektronik maupun bank untuk dipindai oleh dompet elektronik dan bank manapun. Kalian yang sudah lama menggunakan dompet elektronik pasti tahu rasanya melakukan pembayaran dengan kode QR sebelum ada QRIS. Kode QR berlogo BCA SakuKu hanya bisa digunakan menggunakan aplikasi BCA SakuKu, hal yang sama juga berlaku untuk kode QR berlogo GoPay yang hanya bisa digunakan dengan GoPay. Sangat tidak praktis bukan?

Hal inilah yang justru saya rasakan saat menggunakan kartu uang elektronik BRI untuk bertransaksi. Jika merchant tidak mempunyai mesin EDC BRI, maka saya tidak bisa melakukan pembayaran menggunakan kartu uang elektronik BRI. Oke, BRI memang salah satu bank terbesar di Indonesia, tetapi itu bukan jaminan bahwa semua _merchant_ akan memiliki EDC BRI. Bisa jadi merchant hanya mempunyai EDC BCA atau malah EDC Bersama, jelas saja kartu uang elektronik BRI milik saya tidak bisa dibaca oleh EDC tersebut.

Fakta di atas membuat saya mau tidak mau merasa bahwa Bank Indonesia menganaktirikan kartu uang elektronik. Di saat dompet elektronik baik milik bank maupun non-bank sudah terintegrasi dengan GPN melalui QRIS, kartu uang elektronik masih sangat jauh tertinggal. Ini adalah sebuah ironi mengingat GPN atau Gerbang Pembayaran Nasional diluncurkan oleh Bank Indonesia dengan harapan dapat meningkatkan interkoneksi dan interopabilitas sistem pembayaran ritel di Indonesia yang selama ini sangat kompleks dan terfragmentasi dalam hal implementasi. Oleh karena itu, saya berharap Bank Indonesia segera mengambil langkah-langkah untuk meningkatkan integrasi kartu uang elektronik dengan GPN, sehingga pengguna dapat melakukan transaksi di berbagai _merchant_ tanpa harus memusingkan mesin EDC yang dimiliki _merchant_.