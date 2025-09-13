---
title: "Mengecualikaan Situs Web Dari Cloudflare Warp"
date: 2025-05-31T08:27:35+07:00
# author: ["Me", "You"] # multiple authors
author: Nawan
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["insert your tag here"]
showToc: false
TocOpen: false
hidemeta: false
comments: false
description: "Untuk kamu yang telah lelah dengan aksi blokir memblokir Kominfo/Komdigi tetapi tidak ingin berkompromi."
# canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false # to disable highlight.js
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---
Sesuai judul, tulisan ini akan menjawab pertanyaan tersebut. Namun sebelum itu, saya ingin sedikit cerita apa yang melatarbelakangi saya menulis ini. Jika tidak tertarik, silakan langsung lompati bagian ini.

Beberapa hari yang lalu, saya mendengar kabar bahwa akses Internet Archive diblokir oleh pemerintah Indonesia. Ini terbukti dari hasil pencarian domain Internet Archive di trustpositif.komdigi.go.id. Beruntung, hanya domain archive.org saja yang diblokir, sedangkan openlibrary.org tidak diblokir, atau belum? Entahlah.

Namun tetap saja hal ini membuat saya berpikir untuk kembali menggunakan VPN semacam Cloudflare WARP (selanjutnya kita sebut WARP). Selama ini saya memang tidak lagi menggunakan VPN seperti WARP, sebagai gantinya saya menggunakan *DNS over HTTPS* di peramban web Firefox yang saya gunakan. *DNS over HTTPS* selama ini sangat andal untuk mengakses situs yang diblokir pemerintah. Selain itu tidak seperti VPN, saya tetap bisa menyunting di situs-situs proyek Wikimedia seperti Wikipedia tanpa hak *Global IP block exempt*. Masalah selasai. TAMAT.

Bercanda, *hehe*.

Sampai kemudian saya mendengar kabar bahwa akses Internet Archive diblokir oleh pemerintah. Ini membuat saya memikirkan kembali keputusan saya untuk tidak menggunakan WARP. Salah satu kekurangan *DNS over HTTPS* yang saya gunakan adalah *DNS over HTTPS* membuat saya tidak bisa mengakses situs web apapun melalui jaringan internet kampus saya, tidak seperti Cloudflare WARP yang memungkinkan saya untuk mengatur jaringan tepercaya, tidak ada yang bisa saya lakukan dengan *DNS over HTTPS* selain mematikannya ketika terhubung di internet kampus.

Masalah utama dari VPN semacam WARP dan salah satu alasan kenapa saya selama ini tidak menggunakannya adalah situs-situs proyek Wikimedia memblokir alamat IP Cloudflare sehingga saya tidak bisa menyunting Wikipedia dan proyek saudari saat WARP aktif bahkan dengan akun sekalipun. Tak lama setelah saya mendengar kabar pemerintah memblokir Internet Archive, saya kemudian menghubungi Stewards (sukarelawan yang memiliki akses penuh ke antarmuka teknis di semua wiki Wikimedia) melalui surat elektronik untuk meminta hak *IP block exempt*. Beberapa jam kemudian, saya mendapat balasan dari salah satu *stewards* yang mengonfirmasi apakah saya bisa mencoba mengatur VPN yang saya gunakan untuk mengecualikan domain-domain Wikimedia terlebih dahulu. Dari sini saya kemudian mencoba mengoprek pengaturan WARP yang ternyata lumayan banyak.

Saya memang tidak menemukan pengaturan di WARP yang secara khusus berfungsi untuk mengecualikan nama domain. Namun saya menemukan pengaturan di  WARP yang bernama *proxy mode*.*Proxy mode* ini memang tidak secara khusus untuk mengecualikan alamat domain dari WARP, tetapi mode proksi ini dapat digunakan untuk hal itu. Pada bagian selanjutnya dari artikel ini saya akan menunjukkan bagaimana cara menggunakan *proxy mode* untuk mengecualikan nama domain tertentu dari WARP.

## Penafian
Pada artikel ini, saya menggunakan WARP di Linux yang mana antarmuka utamanya adalah dengan program baris perintah `warp-cli`. Panduan pada artikel ini tetap bisa diikuti oleh pengguna WARP di Windows atau macOS tetapi cara mengaktifkan *proxy mode* mungkin berbeda dari versi Linux. Selain itu, untuk peramban yang saya gunakan dalam artikel ini adalah peramban web Firefox. Jika kamu menggunakan peramban berbasis Chromium atau Safari, kamu tetap dapat mengikuti panduan di artikel ini, tetapi beberapa hal di artikel ini mungkin berbeda.

## Mengaktifkan mode proksi

[![asciicast](https://asciinema.org/a/jjr4W4hwycBeK32swlRmENDTw.svg)](https://asciinema.org/a/jjr4W4hwycBeK32swlRmENDTw)

Untuk bisa mengecualikan nama domain dari WARP, sebelumnya perlu untuk mengaktifkan mode proksi di WARP. Sebelum mengaktifkan mode proksi, pastikan bahwa WARP telah aktif. Jika WARP belum aktif, aktifkan terlebih dahulu.

```
warp-cli connect
warp-cli status
Status update: Connected
```

Setelah dipastikan bahwa WARP telah aktif, WARP secara bawaan akan terhubung dengan mode Warp di mana semua lalu lintas jaringan akan dialihkan ke Cloudflare WARP. Untuk bisa mencegah nama domain tertentu dialihkan ke Cloudflare WARP, kita perlu mengubah pengaturan WARP dari mode Warp ke mode Proxy.

```
warp-cli mode --help

Usage: warp-cli mode [OPTIONS] <MODE>

Arguments:
  <MODE>
          Possible values:
          - warp:        Establish a tunnel and use normal UDP DNS proxying
          - doh:         Do not establish a tunnel. Only proxy DNS over DoH
          - warp+doh:    Establish a tunnel and use DoH for DNS
          - dot:         Do not establish a tunnel. Only proxy DNS over DoT
          - warp+dot:    Establish a tunnel and use DoT for DNS
          - proxy:       Establish a tunnel for use in a SOCKS5 proxy
          - tunnel_only: Establish a tunnel and do not proxy DNS

Options:
      --no-paginate
          Disable automatic pagination

  -h, --help
          Print help (see a summary with '-h')
```

Cloudflare WARP memiliki beberapa mode yang dapat dipilih: Warp (bawaan), DNS over HTTPS, Warp + DNS over HTTPS, DNS over TLS, Warp + DNS over TLS, Proxy, dan Tunnel-only. Karena kita di sini ingin mengecualikan nama domain, kita memilih mode *proxy*.

```
warp-cli mode proxy
```

Kemudian tekan enter dan mode proksi telah aktif. Langkah selanjutnya adalah mengatur peramban web Firefox agar menggunakan SOCK5 proxy dari WARP.

## Mengatur proksi SOCKS5 di Firefox
Pertama-tama buka peramban web Firefox jika belum terbuka. Kemudian ketikkan `about:preferences` di bilah pencarian, gulir ke bawah sampai menemukan **Setelan Jaringan** atau **Network Settings** kemudian pilih **Setelan...** atau **Settings...**. Dialog seperti di bawah ini akan terbuka.

Pada dialog **Pengaturan Sambungan** atau **Connection Settings** seperti di atas, pilih **Manual proxy configuration** dan masukkan alamat IP `127.0.0.1` di bilah SOCKS Host. Pada bilah Port disampingnya, masukkan port `40000`.

## Mengecualikan nama domain dan/atau alamat IP dari proksi WARP
Setelah melalukan semua hal di atas, kamu bisa mulai menginput nama domain dan/ataua alamat IP yang ingin dikecualikan dari WARP pada kolom **No proxy for** pada dialog **Connection Settings** yang sama.

{{< figure align=center src="/img/proxy-firefox.png" alt="Tangkapan layar yang menampilkan dialog pengaturan sambungan di Firefox." >}}

Jika semuanya sudah dilakukan dengan benar, dialog **Connection Settings** seharusnya menjadi seperti ini. Setelah memasukkan nama domain dan/atau alamat IP yang ingin dikecualikan dari WARP, jangan lupa simpan dengan memilih **Oke** atau **OK** agar perubahan tersimpan. Setelah menyimpan, seharusnya nama domain dan/atau alamat IP yang sudah dikecualikan tidak akan dialihkan melalui Cloudflare WARP.

## Terima kasih
- [Marcin Kulik](https://hachyderm.io/@ku1ik) yang telah membuat membuat **asciinema**, program perekam terminal yang saya gunakan di tulisan ini.
- Shaemous Flocks, stewards wikimedia yang sudah memberikan saran sehingga saya bisa menemukan cara mengecualikan nama domain dan menuliskannya di artikel ini.
