---
title: "Bagaimana Saya Bertahan dengan 4GB RAM?"
date: 2026-04-12T18:54:13+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["Linux", "Fedora", "Ubuntu", "RAM", "elementary OS"]
categories: ["Teknologi", "Tutorial"]
showToc: true
TocOpen: false
hidemeta: false
comments: false
description: "Sebuah bukti aknedotal tentang bagaimana saya meningkatkan performa dan responsivitas sistem operasi Linux dengan RAM 4GB."
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---

Betul, komputer laptop yang saya gunakan hanya memiliki 4GB RAM. Tak hanya itu, komputer yang saya gunakan ini hanya memiliki satu slot RAM yang disolder sehingga tidak bisa diganti dengan RAM yang lebih tinggi. Keputusan yang pada akhirnya saya sesali.

Dibandingkan Windows, distribusi Linux seperti Fedora memang jauh lebih ringan. Setidaknya sampai kebutuhan RAM melebihi total RAM yang dimiliki dan bisa digunakan. Di kondisi seperti itu, sistem operasi Linux bisa menjadi tidak stabil mulai dari *lag* hingga aplikasi tiba-tiba ~~dibunuh~~ dipaksa mati oleh kernel out-of-memory (OOM)-killer maupun *userspace* OOM-killer seperti `systemd-oomd` tanpa konfirmasi dari pengguna. Solusi ideal dari permasalahan ini memang dengan meningkatkan kapasitas RAM, entah mengganti RAM atau membeli perangkat baru. Namun ini bukanlah pilihan untuk sebagian orang dan saya salah satunya. Bahkan saya kaget waktu tahu [Mas rmdzn](https://fe.disroot.org/@rdnmz@sharkey.world) selama ini [pakai RAM 2GB](https://sharkey.world/notes/akgxadj9oki10001) sebelum akhirnya melakukan *upgrade* menjadi 8GB. Kondisi tersebut akhirnya memaksa saya untuk *berdamai* dengan kapasitas RAM yang terbatas.

{{< figure
align=center
alt="Intel Celeron N4020 @ 1.10 GHz dengan RAM 4GB dan SSD NVMe 512GB."
src="/img/ram-milik-nawan.png"
caption="Ini adalah spesifikasi komputer saya."
>}}

Sistem operasi Linux yang pertama kali saya gunakan adalah Ubuntu 18.04. Saya masih menggunakan konfigurasi bawaan dan tidak mengoprek konfigurasi lebih lanjut. Dari segi performa tidak ada masalah, tetapi ketika saya menggunakan komputer dengan beban kerja berat seperti Zoom dan membuka Firefox dengan banyak tab terbuka Ubuntu berangsur-angsur menjadi tidak stabil dan dalam kondisi ekstrem sistem secara keseluruhan menjadi tidak responsif dan satu-satunya opsi adalah dengan menggunakan [Magic SysRq](https://en.wikipedia.org/wiki/Magic_SysRq_key) untuk secara paksa memulai ulang perangkat.

Ketika saya kemudian menggunakan [EndeavourOS](https://id.wikipedia.org/wiki/EndeavourOS) yang berbasis [Arch Linux](https://archlinux.org/), saya menemukan bahwa ada [beberapa kernel alternatif](https://wiki.archlinux.org/title/Kernel#Officially_supported_kernels) yang bisa digunakan dari Arch Wiki. Dari situ saya memutuskan untuk menggunakan Zen Kernel. Mengutip laman wiki Zen Kernel di Github:

> *Zen Kernel is a fork of Linux that applies out-of-tree features, early backports, and fixes, that impact desktop usage of Linux*.

Peningkatan-peningkatan yang ada di kernel ini dibandingkan versi *upstream* bisa dilihat di [laman wiki](https://github.com/zen-kernel/zen-kernel/wiki/Detailed-Feature-List#zen-kernel-improvements) mereka di Github.

Apakah sistem menjadi lebih responsif? Tidak juga. Mungkin memang ada peningkatan dari segi performa tetapi saya sendiri tidak terlalu merasakannya saat itu. Saat saya menggunakan komputer laptop saya dengan beban kerja berat, sistem tetap menjadi lebih berat. Saya coba menurunkan `vm.swappiness` tapi saya rasa itu tidak terlalu berdampak.

Fedora Linux kemudian mengenalkan saya dengan zram yang merupakan RAM yang dikompresi dan digunakan sebagai swap seperti halnya partisi swap atau swapfile. Zram berbeda dengan swap tradisional karena zram merupakan RAM yang terkompresi yang jelas jauh lebih cepat dari swap tradisional yang berbasis SSD NVMe sekalipun. Secara bawaan, Fedora Linux mengalokasikan 50% RAM untuk zram. Masalahnya ketika zram ini penuh, `systemd-oomd` yang digunakan oleh Fedora Linux dapat secara tiba-tiba dan dengan kejam membunuh aplikasi yang saya gunakan. Beberapa aplikasi yang pernah menjadi korban pembunuhan adalah Firefox, LibreOffice, dan 1Password (di latar belakang). Ini adalah situasi yang tidak bisa ditolerir menurut saya. Mungkin pendekatan ini masuk akal untuk komputer *server*, tetapi tidak untuk komputer pribadi.

Bayangkan ketika kamu duduk di depan komputer lalu tiba-tiba sebuah tangan muncul dari layar komputer dan menodongkan pistol ke arahmu. Itulah gambaran Fedora Linux yang saya gunakan sebelum saya memutuskan untuk menambahkan swapfile sebagai *backup*. Awalnya semua tampak baik-baik saja; komputer saya responsif dan `systemd-oomd` tidak lagi berulah. Seiring waktu, saya menyadari bahwa semakin lama saya menggunakan komputer, saya merasa semuanya menjadi lambat. Bukan lambat yang mendadak dan membuat sistem menjadi tidak responsif seperti halnya saat saya menggunakan Ubuntu, tetapi lambat yang terjadi secara perlahan tapi pasti seiring saya menggunakan komputer saya. `systemd-oomd` memang jarang berulah lagi, tetapi beberapa aplikasi sering menjadi tidak responsif, terutama aplikasi yang pada dasarnya memang berat seperti Firefox. Fitur pencarian global di GNOME juga terasa lambat. Misalnya saat saya mencari aplikasi GNOME Text Editor, aplikasi baru muncul 3-5 detik setelah saya selesai mengetikkan kata kunci pencarian. Saya juga menemukan satu peristiwa ketika `systemd-oomd` tiba-tiba membunuh 1Password yang berjalan di latar belakang.

Ternyata dengan mengombinasikan zram dengan swapfile, saya membuat bom waktu yang dapat meledak kapan saja. Saya baru menyadari bahwa degradasi performa yang saya alami ketika menggunakan Fedora Linux dengan zram dan swapfile adalah *LRU inversion*. Saya semakin yakin setelah membaca artikel yang ditulis Chris Down tentang [mitos zram dan zswap](https://chrisdown.name/2026/03/24/zswap-vs-zram-when-to-use-what.html). *LRU inversion* terjadi ketika RAM tersumbat oleh data-data yang jarang diakses dan membuat data-data yang masih segar justru di-*swap* ke diska yang jauh lebih lambat dari RAM. Ini terjadi karena kernel tidak tahu cara untuk memindahkan data yang jarang diakses di zram ke diska.

> *In this case, zram isn't just failing to help here, it is, instead, actively making things worse than having no compressed swap at all*.
>
> —[Debunking zswap and zram myths](https://chrisdown.name/2026/03/24/zswap-vs-zram-when-to-use-what.html) (Chris Down)

Ketika saya menyadari semuanya, saya sudah membulatkan tekat untuk berpindah ke elementary OS. Hal yang pertama kali saya lakukan setelah memasang elementary OS adalah mengaktifkan zswap dan menyesuaikan beberapa parameter *virtual memory*. Berikut adalah konfigurasi zswap saya ketika artikel ini ditulis:

```
zswap.enabled=1
zswap.shrinker_enabled=1
zswap.zpool=zsmalloc
zswap.compressor=lz4hc
zswap.max_pool_percent=20
```

Parameter `zswap.max_pool_percent` mengatur total RAM yang terkompresi relatif dengan RAM yang tersedia. Dalam hal ini nilai 20 berarti 20% dari total RAM bisa digunakan oleh zswap. Ini adalah nilai bawaan. Sebelumnya saya atur sebesar 30% tetapi saya memutuskan untuk kembali ke nilai bawaan setelah saya melihat rasio kompresinya tidak pernah mencapai 3:1, padahal saya menggunakan algoritma kompresi LZ4HC (HC berarti *high compression*). Saya menggunakan LZ4HC karena memiliki rasio kompresi yang tinggi tetapi tetap ringan untuk CPU. Saya juga mengaktifkan fitur *Thrashing Prevention* yang ada di kernel dengan mengatur nilai `min_ttl_ms` dari 0 (yang berarti *disabled*) menjadi 1000 seperti yang [disarankan situs dokumentasi kernel](https://www.kernel.org/doc/html/next/admin-guide/mm/multigen_lru.html#thrashing-prevention). Sejauh ini, saya merasakan peningkatan dari sisi responsivitas dan performa setelah mengaktifkan `zswap` dan *Thrashing Prevention*.

Saya juga menyesuaikan konfigurasi *virtual memory* sebagai berikut:

```
vm.swappiness = 100
vm.watermark_boost_factor = 0
vm.watermark_scale_factor = 125
vm.page-cluster = 0
```
Konfigurasi *virtual memory* di atas didasarkan pada laman Arch Wiki [tentang optimisasi zram](https://wiki.archlinux.org/title/Zram#Optimizing_swap_on_zram). Saya mengubah `vm.swappiness` menjadi 100 karena komputer  saya memiliki CPU kelas bawah, sedangkan zswap—seperti halnya zram—mengonsumsi sumber daya CPU untuk proses kompresi dan dekompresi. Jika kamu memiliki komputer dengan spesifikasi CPU yang lebih tinggi, `vm.swappiness` yang lebih tinggi dapat dipertimbangkan. Jika tidak yakin, saya sarankan mengaturnya menjadi `vm.swappiness=100` karena dengan nilai itu kernel sendiri yang akan menentukan kapan mengklaim *file cache* atau swap ke zswap/zram secara netral.

Saya menulis artikel ini dengan QOwnNotes di elementary OS 8.1 dan di saat yang bersamaan saya membuka Firefox dengan 10 tab terbuka, Zotero dengan 2 tab terbuka, terminal, dan *file manager*. Dengan beban kerja sedemikian rupa saya tidak menemukan masalah performa yang signifikan; berpindah-pindah antar aplikasi pun terasa sangat mulus tanpa *lag* yang mengganggu. Bukan yang mulus sekali—tentu saja—mengingat CPU komputer saya yang bisa dibilang kelas bawah tetapi ini sangat *usable* daripada sebelumnya saat saya menggunakan Ubuntu, EndeavourOS, dan Fedora. Bisa dibilang setara atau bahkan lebih baik daripada saat saya *boot* ke Windows 11.

## *Appendix*
### Mengaktifkan zswap
Untuk mengaktifkan zswap untuk sementara: `echo 1 > /sys/module/zswap/parameters/enabled`. Untuk mengaktifkan zswap secara permanen, tambahkan parameter `zswap.enabled=1` di *kernel boot paramaters*. Parameter zswap lain juga bisa diatur melalui *kernel boot paramaters*.

Misalnya, untuk mengaktifkan zswap dengan konfigurasi yang sama seperti saya tambahkan baris di bawah ini ke /etc/defaults/grub:
```
zswap.shrinker_enabled=1 zswap.zpool=zsmalloc zswap.compressor=lz4hc zswap.max_pool_percent=20
```
Jangan lupa untuk mengompilasi GRUB configuration file dengan menjalankan `sudo update-grub` di Debian dan turunannya atau `sudo grub2-mkconfig -o /boot/grub2/grub.cfg` di RHEL/Fedora.

### Menyesuaikan konfigurasi *virtual memory*
Buat /etc/sysctl.d/99-vm-zswap-parameters.conf jika belum ada, lalu tambahkan:
```
vm.swappiness = 100
vm.watermark_boost_factor = 0
vm.watermark_scale_factor = 125
vm.page-cluster = 0
```

### Mengaktifkan *Thrashing Prevention*
Sebelum mengaktifkan *thrashing prevention*, pastikan bahwa kernel yang kamu gunakan sudah mendukung *Multi-Gen Least Recently Used* (MGLRU) dan statusnya aktif. Jalankan perintah berikut untuk mengonfirmasi bahwa MGLRU sudah aktif:
```
cat /sys/kernel/mm/lru_gen/enabled
```

Jika yang muncul adalah `0x0007` maka MGLRU aktif. Namun jika yang muncul `0x0000` maka MGLRU tidak aktif.

Jika belum aktif, MGLRU dan *thrashing prevention* dapat diaktifkan dengan menambahkan baris di bawah ini ke /etc/tmpfiles.d/mglru.conf:
```
w- /sys/kernel/mm/lru_gen/enabled - - - - y
w- /sys/kernel/mm/lru_gen/min_ttl_ms - - - - 1000
```

Jangan lupa memulai ulang komputer agar pengaturan diaplikasikan, lalu cek dengan perintah berikut dan pastikan nilainya adalah 1000:

```
cat /sys/kernel/mm/lru_gen/min_ttl_ms
```

### Statistik zswap
Ketika artikel ini ditulis, berikut adalah statistik mentah zswap:
```
$ sudo grep -r . /sys/kernel/debug/zswap/
[sudo] kata sandi untuk nawan:            
/sys/kernel/debug/zswap/stored_pages:373259
/sys/kernel/debug/zswap/pool_total_size:464248832
/sys/kernel/debug/zswap/written_back_pages:368039
/sys/kernel/debug/zswap/decompress_fail:0
/sys/kernel/debug/zswap/reject_compress_poor:0
/sys/kernel/debug/zswap/reject_compress_fail:36018
/sys/kernel/debug/zswap/reject_kmemcache_fail:0
/sys/kernel/debug/zswap/reject_alloc_fail:0
/sys/kernel/debug/zswap/reject_reclaim_fail:2
/sys/kernel/debug/zswap/pool_limit_hit:0
```

### Electron membunuhmu
Saat saya menulis artikel ini, saya memang tidak sedang menggunakan aplikasi berbasis Electron dan Chrome Embedded Framework (CEF), tetapi saya memiliki 1 aplikasi berbasis Electron yaitu 1Password. Jika memiliki memori terbatas, sebaiknya hindari sebisa mungkin kecuali tidak ada alternatif non-Electron yang sesuai dengan kebutuhan. Kalaupun terpaksa menggunakan aplikasi berbasis Electron atau CEF seperti Zoom atau 1Password, setidaknya apa yang sudah saya bahas di atas dapat mencegah komputermu *ngeleg* sampai kamu bisa membeli RAM atau komputer baru.
