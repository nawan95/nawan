---
title: "Obsidian"
date: 2025-12-28T18:52:58+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["Obsidian","open source","vendor lock-in","software"]
categories: "Teknologi"
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: ""
#canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
--- 

Bagi yang membaca judulnya dan bertanya-tanya apa itu Obsidian, Obsidian adalah aplikasi _personal knowledge base_ atau bahasa awamnya aplikasi pencatatan. Pada dasarnya Obsidian sama saja seperti aplikasi pencatatan lain yang sudah lama ada seperti sebut saja Evernote atau OneNote. Perbedaan paling menonjol dari Obsidian dibandingkan kebanyakan aplikasi pencatatan adalah penggunaan format plaintext dengan bahasa markah markdown. Selain itu menggunakan Obsidian juga tidak perlu akses internet sama sekali, kecuali jika ingin menyinkronkan catatan entah melalui _plugin_ atau layanan sinkronisasi resmi mereka yang disebut Obsidian Sync.  

Tunggu, _plugin_? Betul sekali.  Seperti halnya peramban web, Obsidian juga mendukung _plugin_ atau ekstensi yang memungkinkan pengguna untuk mengkustomisasi aplikasi Obsidian mereka dengan fitur-fitur selain yang sudah disediakan di aplikasi ataupun memodifikasi fitur-fitur yang sudah disediakan. Kira-kira itulah yang membedakan Obsidian dengan aplikasi serupa macam Notion, Evernote, atau OneNote.  

Sekilas model bisnis Obsidian sangat unik dan inovatif. Bagaimana tidak, kamu bisa menggunakan aplikasi Obsidian dan hampir semua fiturnya tanpa perlu mengeluarkan uang sepeserpun. Memang betul mereka memiliki layanan berbayar dengan mekanisme berlangganan yaitu Obsidian Sync dan Obsidian Publish, tetapi kedua fitur ini bukan sebuah keharusan agar bisa menggunakan Obsidian. Tanpa berlangganan kedua layanan resmi tersebut, saya tetap bisa menggunakan Obsidian dan semua fiturnya tanpa terkecuali—lupakan _pop-up_ yang mengharuskan kamu berlangganan paket berbayar untuk bisa mengakses fitur yang dikunci.  

Bagaimana? _Too good to be true_?

Mungkin tidak.

Jika kita menggali lebih dalam, kita akan menemukan bahwa aplikasi Obsidian merupakan aplikasi _proprietary_ dengan kata lain bukan aplikasi bebas dan sumber terbuka. Dari sini, model _modus operandi_ Obsidian yang sebelumnya tampak _too good to be true_ akhirnya mulai menemukan titik terangnya. Obsidian memang menggunakan _plaintext_ dengan markah markdown sebagai format filenya, fitur terbaru mereka Obsidian Canvas pun juga demikian—menggunakan JSON dengan spesifikasi yang dilisensikan dengan lisensi bebas. Namun demikian, aplikasi Obsidian bukanlah aplikasi sumber terbuka.  

Lalu apa masalahnya?  

Masalahnya kurang lebih sama seperti Microsoft Office. Sebelum Microsoft memperkenalkan Open Office XML (OOXML) yang bebas dan sumber terbuka, Microsoft Office menggunakan format biner _proprietary_. Konsekuensinya mudah ditebak, dokumen yang dibuat dengan Microsoft Office tidak bisa dibuka menggunakan program selain Microsoft Office. Agar program lain bisa membuka format biner _proprietary_ Microsoft Office tersebut umumnya perlu melakukan apa yang disebut dengan _reverse engineering_—melakukan analisis untuk mengetahui cara kerja sebuah program atau berkas digital. Untungnya, kondisi itu tak lama karena pada 2006 atau 18 tahun yang lalu Microsoft merilis OpenOfficeXML, sebuah format office yang bebas dan sumber terbuka. Sekarang siapapun dapat mengimplementasikan Open Office XML ini. Selain LibreOffice, perangkat lunak _office_ lain seperti SoftMaker Office, WPS, dan OnlyOffice pun juga mendukung format OOXML ini.  

Sekilas memang terdengar tidak masuk akal. Kenapa Microsoft meninggalkan format _proprietary_ mereka dan malah membuat format OOXML? Namun jika kita melihat gambaran besarnya, kita akan tahu bahwa Microsoft hanya membuat format Microsoft Office menjadi bebas dan sumber terbuka, tetapi perangkat lunak Microsoft Office masih merupakan perangkat lunak _proprietary_. Selain itu Microsoft Office memiliki banyak fitur-fitur ekslusif yang tidak ada di program serupa, karena kode sumber Microsoft Office tertutup, perangkat lunak lain tidak bisa mengimplementasikan fitur tersebut. Satu-satunya cara untuk mengimplementasikan fitur-fitur yang ada di Microsoft Office, lagi-lagi dengan melakukan _reverse engineering_. Namun _vendor lock-in_ yang sebenarnya muncul ketika kita sudah nyaman atau terbiasa dengan _workflow_ Microsoft Office dan tidak bisa berpindah ke alternatif lain seperti LibreOffice, WPS, atau SoftMaker Office karena sudah terlalu bergantung pada fitur-fitur yang hanya ada di Microsoft Office.  

Microsoft Office adalah contoh utama bagaimana _vendor lock-in_ tidak selalu berarti bahwa format data harus selalu _proprietary_. Format OOXML merupakan format bebas dan sumber terbuka. Kamu bisa membuka berkas tersebut di LibreOffice, WPS, SoftMaker Office, Apple iWork, dan banyak lagi. Microsoft Office bahkan bisa membuka dan menulis dengan OpenDocument Format (ODF) alih-alih OOXML—format bawaan LibreOffice. Kamu bahkan bisa bilang bahwa saat menggunakan Microsoft Office, _datamu adalah milikmu_. Namun Microsoft Office tetap _proprietary_, begitu pula _workflow_ yang menyertainya. Seseorang yang sudah sangat terbiasa dengan _workflow_ Microsoft Office dan berbagai fitur dan ekosistem yang menyertainya kecil kemungkinan akan berpindah ke alternatif lain, bukan karena tidak mau tetapi karena tidak bisa atau sangat sulit. Inilah yang disebut sebagai _monopolistic cum technological (vendor) lock-in_  yang membedakannya dengan vendor lock-in yang semata monopolistik dan technological lock-in. _Monopolistic-cum-technological vendor lock-in_ adalah variasi dari _vendor lock-in_ yang tidak hanya monopolistik tetapi juga bersifat kolektif. Saat banyak perangkat lunak perkantoran baik _proprietary_ atau _open source_ yang mengimplementasikan format Open Office XML, terlepas dari seberapa baik kompatibilitasnya, pada akhirnya akan menguntungkan Microsoft sekalipun keuntungan itu tidak datang secara langsung dalam bentuk materi.  

Dalam kasus Microsoft Office ini, Microsoft beralih dari _vendor lock-in_ yang sepenuhnya monopolistik ke _vendor lock-in_ yang tidak hanya monopolistik tetapi juga kolektif melalui perangkat lunak Microsoft Office _proprietary_ yang kemudian disokong oleh format OOXML sumber terbuka dan bebas. Microsoft kelak [mendaftarkannya](https://en.wikipedia.org/wiki/Standardization_of_Office_Open_XML) ke lembaga standardisasi untuk menjadi format dokumen standar alih-alih berkontribusi pada Open Document Format yang sudah lebih dulu didapuk sebagai format dokumen standar. Modus operandi Obsidian pada dasarnya sama seperti yang telah dilakukan Microsoft dengan Microsoft Office; alih-alih menggunakan _vendor lock-in_ yang semata monopolistik, model bisnis Obsidian bertumpu pada vendor lock-in yang tidak hanya monopolistik, tetapi juga kolektif. Format yang digunakan Obsidian, baik untuk teks, canvas, maupun database merupakan format bebas dan sumber terbuka, tapi itu tidak menutup fakta bahwa perangkat lunak Obsidian sendiri adalah perangkat lunak _proprietary_ yang dilindungi hak cipta secara penuh. Selain itu tidak menutup kemungkinan bahwa Obsidian juga memiliki hak paten. Lisensi sumber terbuka seperti GNU Public License misalnya didesain untuk menghindari perangkat lunak dilindungi hak paten yang bersifat monopolistik atau _patent-ecumbered_.  

Model bisnis Obsidian sangat berbanding terbalik dengan misalnya Collabora. Walaupun Collabora merilis Collabora Office, itu tidak lebih dari LibreOffice + Collabora _branding._ Model bisnis mereka tidak dengan menjual perangkat lunak Collabora Office, tetapi menjual layanan seputar ekosistem LibreOffice seperti dukungan profesional dan jaminan atau garansi yang tidak kamu dapatkan dari LibreOffice karena Mozilla Public License yang digunakan LibreOffice tidak memberikan jaminan apapun:  

> Covered Software is provided under this License on an “as is” basis, without warranty of any kind, either expressed, implied, or statutory, including, without limitation, warranties that the Covered Software is free of defects, merchantable, fit for a particular purpose or non-infringing. The entire risk as to the quality and performance of the Covered Software is with You. Should any Covered Software prove defective in any respect, You (not any Contributor) assume the cost of any necessary servicing, repair, or correction. This disclaimer of warranty constitutes an essential part of this License. No use of any Covered Software is authorized under this License except under this disclaimer.  

> Under no circumstances and under no legal theory, whether tort (including negligence), contract, or otherwise, shall any Contributor, or anyone who distributes Covered Software as permitted above, be liable to You for any direct, indirect, special, incidental, or consequential damages of any character including, without limitation, damages for lost profits, loss of goodwill, work stoppage, computer failure or malfunction, or any and all other commercial damages or losses, even if such party shall have been informed of the possibility of such damages. This limitation of liability shall not apply to liability for death or personal injury resulting from such party’s negligence to the extent applicable law prohibits such limitation. Some jurisdictions do not allow the exclusion or limitation of incidental or consequential damages, so this exclusion and limitation may not apply to You.  

Model bisnis mereka tidak bergantung pada _vendor lock-in_ baik yang semata monopolistik atau yang juga bersifat kolektif.  

Walaupun menggunakan perangkat lunak sumber terbuka sendiri juga tidak menjamin bahwa kita akan terbebas dari _vendor lock-in_, setidaknya menggunakan perangkat lunak sumber terbuka bersama dengan format berkas terbuka membuatmu satu langkah di depan dalam membebaskan diri dari _vendor lock-in_ daripada mereka yang masih bergantung dengan Microsoft Office atau Obsidian. Jadi saat lain kali ada yang mengklaim bahwa Obsidian tidak menimbulkan _vendor lock-in,_ tunjukkan tulisan ini pada mereka.
