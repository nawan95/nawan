---
title: "Menjajal Firefox Translation"
date: 2026-05-01T13:50:46+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["Firefox","AI"]
categories: "Teknologi"
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
---

Pada 23 Agustus 2023 silam, Mozilla merilis fitur terjemahan web yang berbasis kecerdasan buatan. Berbeda dengan fitur serupa di Google Chrome, fitur terjemahan web di [peramban web Firefox](https://www.firefox.com/id/download/all/desktop-release/) ini berfungsi sepenuhnya secara luring tanpa koneksi internet. Koneksi internet hanya dibutuhkan untuk mengunduh model kecerdasan buatan. Hingga postingan ini ditulis, fitur terjemahan web Firefox bahkan sudah mendukung lebih dari 40 bahasa, termasuk bahasa Indonesia.

Tak cukup sampai di situ, dengan rilisnya Firefox versi 150, Mozilla menambahkan Firefox Translation. Tidak seperti fitur terjemahan web, Firefox Translation ini adalah mesin penerjemah umum, seperti halnya Google Translate atau DeepL Translate. Fitur ini dapat diakses dengan mengetikkan `about:translations` ke bilah alamat Firefox. Selain itu, fitur ini juga dapat diakses dengan mengetikkan "terjemahkan" atau "translation" ke bilah alamat.

Sedikit informasi, fitur terjemahan web di Firefox dan Firefox Translation ini lahir dari Proyek Bergamot yang diprakarsai oleh Universitas Edinburgh bersama Universitas Karlova di Prague, Universitas Sheffield, Universitas Tartu, dan Mozilla. Proyek Bergamot mendapat dukungan dari Uni Eropa melalui hibah inovasi dan penelitian Horizon 2020 dengan total [3 juta euro](https://cordis.europa.eu/project/id/825303). Informasi lebih lanjut bisa dilihat di situs web Proyek Bergamot di https://browser.mt.

Bagaimana dengan kualitas terjemahannya? Saya coba bandingkan hasil terjemahan Firefox Translation dengan Google Translate dan DeepL. Hasilnya seperti ini:

| Teks Asli (Inggris) | Firefox Translation (Indonesia) | Google Translate (Indonesia) | DeepL Translate (Indonesia) |
| :--- | :--- | :--- | :--- |
| Jazz is a music genre that originated in the African-American communities of New Orleans, Louisiana, United States, in the late 19th and early 20th centuries, with its roots in blues and ragtime. Since the 1920s Jazz Age, it has been recognized as a major form of musical expression in traditional and popular music, linked by the common bonds of African-American and European-American musical parentage. Jazz is characterized by swing and blue notes, complex chords, call and response vocals, polyrhythms and improvisation. Jazz has roots in West African cultural and musical expression, and in African-American music traditions. | Jazz adalah genre musik yang berasal dari komunitas Afrika-Amerika di New Orleans, Louisiana, Amerika Serikat, pada akhir abad 19th dan awal abad kedua puluh, dengan akarnya di blues dan ragtime. Sejak Zaman Jazz 1920s, telah diakui sebagai bentuk utama ekspresi musik dalam musik tradisional dan populer, dihubungkan oleh ikatan umum keturunan musik Afrika-Amerika dan Eropa-Amerika. Jazz ditandai dengan ayunan dan catatan biru, akord kompleks, panggilan dan respon vokal, polyrhythms dan improvisasi. Jazz memiliki akar dalam ekspresi budaya dan musik Afrika Barat, dan dalam tradisi musik Afrika-Amerika. | Jazz adalah genre musik yang berasal dari komunitas Afrika-Amerika di New Orleans, Louisiana, Amerika Serikat, pada akhir abad ke-19 dan awal abad ke-20, dengan akarnya pada blues dan ragtime. Sejak Era Jazz tahun 1920-an, jazz telah diakui sebagai bentuk ekspresi musik utama dalam musik tradisional dan populer, yang dihubungkan oleh ikatan bersama antara warisan musik Afrika-Amerika dan Eropa-Amerika. Jazz dicirikan oleh swing dan blue notes, akord yang kompleks, vokal tanya jawab, poliritme, dan improvisasi. Jazz berakar pada ekspresi budaya dan musik Afrika Barat, serta tradisi musik Afrika-Amerika. | Jazz adalah genre musik yang berasal dari komunitas Afrika-Amerika di New Orleans, Louisiana, Amerika Serikat, pada akhir abad ke-19 dan awal abad ke-20, dengan akar yang berasal dari blues dan ragtime. Sejak era Jazz pada tahun 1920-an, jazz telah diakui sebagai bentuk ekspresi musik utama dalam musik tradisional dan populer, yang dihubungkan oleh ikatan bersama antara warisan musik Afrika-Amerika dan Eropa-Amerika. Jazz dicirikan oleh swing dan blue notes, akord yang kompleks, vokal panggilan dan tanggapan, poliritme, serta improvisasi. Jazz berakar pada ekspresi budaya dan musik Afrika Barat, serta tradisi musik Afrika-Amerika. |

Dari segi kecepatan, teks berbahasa inggris di atas diterjemahkan dalam waktu 2-3 detik dengan Intel Celeron N4020. Tidak buruk. Apalagi ini berfungsi tanpa internet, yang mana mengeliminasi latensi akibat koneksi internet yang buruk.

Terlepas dari kualitas terjemahannya dan kecepatannya, fakta bahwa Firefox Translation berjalan secara langsung di komputer tanpa mengirimkan teks ke peladen tidak bisa diabaikan begitu saja. Kapan lagi bisa memiliki mesin penerjemah yang berjalan langsung di perangkat yang kita miliki tanpa bergantung pada infrastruktur yang dimiliki korporasi yang belum tentu berpihak pada kita.
