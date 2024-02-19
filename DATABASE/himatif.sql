-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2023 pada 19.22
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `himatif`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(56, 'Grand Launching Wirausaha Merdeka Kampus Merdeka 2023 ', 'grand-launching-wirausaha-merdeka-kampus-merdeka-2023-', '<p>Pada tanggal 29 Agustus 2023 dilaksanakan Grand Launching WMK di Politeknik Perkapalan Surabaya yang di ikuti 6 Universitas&nbsp; yaitu Universitas Qomaruddin Gresik, Universitas Islam Madura, Politeknik Perkapalan Surabaya,&nbsp;<span style=\"font-size: 1rem;\">Politeknik Perkapalan Madura,&nbsp;</span><span style=\"font-size: 1rem;\">Politeknik Perkapalan Malang dan&nbsp;</span><span style=\"font-size: 1rem;\">Politeknik Perkapalan Banyuwangi</span></p>', 'launching_3.jpg', 'Y', 32, '2020-09-21', '13:46:26', 'Senin', 'admin'),
(57, 'Pelepasan Wirausaha Merdeka Kampus Merdeka 2023 ', 'pelepasan-wirausaha-merdeka-kampus-merdeka-2023-', '<p>Pelepasan Peserta wirausaha merdeka kampus merdeka 2023 di Universitas Qomaruddin Pada Tanggal 13 September 2023<br></p>', 'PELEPASANN.jpg', 'Y', 9, '2023-10-11', '18:07:04', 'Rabu', 'admin'),
(58, 'Kunjungan Ke Mitra CV beta Nusantara', 'kunjungan-ke-mitra-cv-beta-nusantara', '<p>Pada tanggal 1 Oktober 2023 Team Code Crafters bersama DPL melakukan Kunjungan ke Mintra CV beta Nusantara&nbsp;</p><p><br></p>', 'Beta_nusantara1.jpg', 'Y', 6, '2023-10-11', '18:07:52', 'Rabu', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'orange');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(20, 'Kursus Web Programming Online', '', '', '2020-09-17'),
(22, 'Memurnikan Aqidah Menebarkan Sunnah', '', '', '2017-05-21'),
(23, 'Media Salafiyyah Ahlus Sunnah', '', '', '2017-05-21'),
(24, 'Penerimaan Mahasiswa Baru', '', '', '2020-08-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(717, 19, 'admin', 'Steam Bikin Halaman Khusus IGDX 2023, Isinya Kumpulan Game Buatan Indonesia', '', '', 'steam-bikin-halaman-khusus-igdx-2023-isinya-kumpulan-game-buatan-indonesia', 'N', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">BALI, KOMPAS.com - Kementerian Komunikasi dan Informatika (Kominfo) dan Asosiasi Game Indonesia (AGI) kembali menggelar ajang temu pengembang (developer) dan penerbit (publisher) game bertajuk Indonesia Game Developer Exchange (IGDX) 2023. Menjelang acara yang digelar selama tiga hari (11-13 Oktober 2023) di The Stones Hotel, Legian, Bali ini, Kominfo dan AGI menggandeng platform distribusi game Steam untuk membuat halaman khususu IGDX 2023. Halaman khusus tersebut, berisi daftar game-game indie terbaru buatan developer lokal yang akan dipamerkan (showcase) di IGDX 2023. Beberapa di antaranya seperti Kiss: Kpop Idol Stories - Road to Debut buatan Wisageni Studio, Kejora buatan Berangin Creative, Tanasurga buatan Rainman Studios dan Niji Games, DreadHaunt buatan Digital Happiness, Afterlove EP buatan Pikselnesia, dan masih banyak lagi. Baca juga: IGDX 2023 Digelar di Bali, Libatkan Lebih Banyak Developer dan Publisher Game Selain melihat daftar game yang akan dipamerkan, pengguna juga bisa memainkan versi demo dari game-game baru buatan developer lokal tersebut. Game-game ini tentunya belum resmi dirilis dan akan dipamerkan di IGDX 2023. Lihat Foto Suasana Indonesia Developer Game Exchange (IGDX) yang berlangsung di Bali, Oktober 2023.(KOMPAS.com/Bill Clinten.) Di samping game-game yang belum dirilis, laman hasil kerja sama Steam dan penyelenggara IGDX 2023 tersebut juga menampilkan sejumlah game lokal populer yang sudah meluncur beberapa waktu belakangan. Gamer juga bisa memainkan versi demo dari game-game tersebut sebelum membelinya. Beberapa game yang ada di laman IGDX 2023 mencakup Hello Goodboy buatan Rolling Glory Jam, Faerie Afterlight bikinan Clay Game Studio, A Space for the Unbound buatan Mojiken Studios, Coffee Talk Episode 2: Hibiscus & Butterfly bikinan Toge Productions, dan masih banyak lagi. Penasaran game-game baru buatan developer Indonesia apa saja yang akan dipamerkan di IGDX 2023 nanti? Daftarnya bisa disimak dalam laman Steam Store yang bisa diakses di tautan berikut ini.</span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></p>', '', 'Rabu', '2023-10-11', '10:50:17', 'igdx.png', 0, '', 'Y'),
(716, 19, 'admin', 'Raspberry Pi 5 Dirilis, Lebih Kencang dan Lebih Mahal ', '', '', 'raspberry-pi-5-dirilis-lebih-kencang-dan-lebih-mahal-', 'N', 'Y', 'N', '<p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Jakarta - Meski awalnya sempat diragukan akan meluncur tahun ini, Raspberry Pi 5 akhirnya dirilis. Komputer mikro tersebut tampil dengan spesifikasi yang lebih kencang, tapi juga harga yang lebih mahal.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Raspberry Pi 5 adalah Raspberry Pi pertama yang hadir dengan chip khusus yang memang dibuat untuk mereka. Otaknya adalah prosesor quad core 64 bit Arm Cortex-A76 yang beroperasi di 2,4GHz, sekitar 2-3 kali lebih kencang dibanding Raspberry Pi 4 keluaran empat tahun lalu.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Prosesor tersebut dipasangkan dengan chip grafis VideoCore VII 800MHz, yang menurut Raspberry Pi Foundation, punya peningkatan performa yang signifikan dibanding pendahulunya.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"></p><p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Jakarta - Meski awalnya sempat diragukan akan meluncur tahun ini, Raspberry Pi 5 akhirnya dirilis. Komputer mikro tersebut tampil dengan spesifikasi yang lebih kencang, tapi juga harga yang lebih mahal.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Raspberry Pi 5 adalah Raspberry Pi pertama yang hadir dengan chip khusus yang memang dibuat untuk mereka. Otaknya adalah prosesor quad core 64 bit Arm Cortex-A76 yang beroperasi di 2,4GHz, sekitar 2-3 kali lebih kencang dibanding Raspberry Pi 4 keluaran empat tahun lalu.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Prosesor tersebut dipasangkan dengan chip grafis VideoCore VII 800MHz, yang menurut Raspberry Pi Foundation, punya peningkatan performa yang signifikan dibanding pendahulunya.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br></p>', '', 'Rabu', '2023-10-11', '10:42:37', 'raspberry-pi-5_169_(1)1.png', 0, '', 'Y'),
(715, 19, 'admin', 'Microsoft Pastikan Bing AI Berbasis GPT-4 Selalu Tersedia Gratis', '', '', 'microsoft-pastikan-bing-ai-berbasis-gpt4-selalu-tersedia-gratis', 'N', 'Y', 'N', '<p><br></p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Chatbot artificial intelligence (<a href=\"https://infokomputer.grid.id/tag/ai\" style=\"vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">AI</a>) ChatGPT sukses menjadi inspirasi perusahaan raksasa teknologi lainnya untuk meluncurkan layanan serupa.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Saat ini pengguna yang merasakan teknologi ChatGPT 4 milik OpenAI harus menjadi pelanggan premium yang harus mengeluarkan biaya setiap bulannya.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Sedangkan, layanan <a href=\"https://infokomputer.grid.id/tag/microsoft-bing\" style=\"vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">Microsoft Bing</a> berbasis ChatGPT 4 bisa Anda nikmati tanpa biaya. Kali Microsoft tegas menyatakan bahwa Microsoft akan terus menyediakan <a href=\"https://infokomputer.grid.id/tag/bing-ai\" style=\"vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">Bing AI</a> berbasis <a href=\"https://infokomputer.grid.id/tag/gpt4\" style=\"vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">GPT4</a> secara gratis.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Hal itu menjadi pertanyaan oleh pengguna karena Microsoft telah menghadirkan layanan Bing AI versi enterprise berbayar. Pengumuman terbaru tentang Bing Chat enterprise tidak akan berdampak pada pengalaman menggunakan AI saat ini.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">\"Pengguna tetap bisa mengakses Bing AI secara gratis melalui Edge dan Windows Copilot,\" tulis Microsoft dalam blognya.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Microsoft juga berkomitmen akan mengembangkan Bing Chat ke lebih banyak produk dan tidak akan membebankan biaya kepada pengguna untuk menggunakan AI tersebut.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Saat ini pengembangan Bing AI menggunakan model bahasa besar (LLM) yang dilatih oleh Microsoft dan OpenAI, menggunakan neural network dan big data dari berbagai sumber seperti buku, riset, dan lain-lain.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Bing juga telah dilatih menggunakan hasil pencarian, memungkinkan AI untuk mencari di web, merangkum data, dan berinteraksi dengan pengguna.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Microsoft juga telah menghadirkan berbagai peningkatan gratis pada Bing.com. Salah satu diantaranya adalah fitur \"Visual Search\" yang menggunakan model <a href=\"https://infokomputer.grid.id/tag/gpt-4\" style=\"vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">GPT-4</a> dari OpenAI untuk mengenali gambar dan memberikan deskripsi serta informasi yang relevan berdasarkan gambar yang diunggah pengguna.</p><p style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">Fitur Pencarian Visual ini tersedia di Bing.com, Microsoft Edge, dan aplikasi mobile. Selain itu, Microsoft sedang mengembangkan dukungan \"no search\" untuk Bing AI, yang akan menghadirkan pengalaman pencarian yang lebih mirip dengan ChatGPT.</p>', '', 'Rabu', '2023-10-11', '10:35:58', '044087400_1601962094-Bing1.jpg', 0, '', 'Y'),
(714, 19, 'admin', '5 Bad ChatGPT Mistakes You Must Avoid', '', '', '5-bad-chatgpt-mistakes-you-must-avoid', 'N', 'Y', 'N', '<p><span style=\"color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">Generative AI applications like ChatGPT and Stable Diffusion are incredibly useful tools that can help us with many day-to-day tasks. Many of us have already found that when used effectively, they can make us more efficient, productive, and creative.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">However, what’s also becoming increasingly apparent is that there are both right ways and wrong ways to use them. If we aren’t careful, it’s easy to develop bad habits that could quickly turn into problems.</p><div class=\"halfway_hardwall_2\" style=\"box-sizing: inherit; margin: 0px 0px 1.2rem; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">So, here’s a quick list of five pitfalls that can easily be overlooked. Being aware of these dangers should make it fairly simple to avoid them and ensure we\'re always using these powerful new tools in a way that\'s helpful to us rather than setting us up for embarrassment or failure.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><span style=\"box-sizing: inherit; font-weight: 700;\">Believing everything it tells you</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><fbs-ad position=\"inread\" progressive=\"\" ad-id=\"article-0-inread\" aria-hidden=\"true\" role=\"presentation\" class=\"inread-active\" display-called=\"\" style=\"box-sizing: inherit; display: block; overflow-x: auto; text-align: center; margin: 1.2rem 0px;\"></fbs-ad></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">Unfortunately, you only need to play around with ChatGPT for a short time to realize that far from being an all-knowing robot overlord, it can be prone to being a bit dim at times. It has a tendency to <a href=\"https://bernardmarr.com/chatgpt-what-are-hallucinations-and-why-are-they-a-problem-for-ai-systems/\" target=\"_blank\" class=\"color-link\" title=\"https://bernardmarr.com/chatgpt-what-are-hallucinations-and-why-are-they-a-problem-for-ai-systems/\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://bernardmarr.com/chatgpt-what-are-hallucinations-and-why-are-they-a-problem-for-ai-systems/\" aria-label=\"hallucinate\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">hallucinate</a> – a term borrowed from human psychology to make its errors seem more relatable to us. It really just means it makes things up, gets things wrong, and sometimes does so with an air of confidence that can seem comical.</p><div class=\"recirc-module marketPlace\" data-type=\"standard\" data-gtm-vis-recent-on-screen655684_1281=\"311\" data-gtm-vis-first-on-screen655684_1281=\"311\" data-gtm-vis-total-visible-time655684_1281=\"100\" data-gtm-vis-has-fired655684_1281=\"1\" style=\"box-sizing: inherit; border-bottom: 1px solid rgb(235, 235, 235); border-top: 1px solid rgb(235, 235, 235); clear: both; margin: 0px 0px 1.2rem; padding: 12px 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><div class=\"recirc-module-body\" id=\"recirc-unit\" style=\"box-sizing: inherit;\"><div class=\"recirc-module-title\" style=\"box-sizing: inherit; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 18px; font-family: \"Work Sans\", sans-serif; letter-spacing: 0.5px; margin-top: 0px;\">MORE FROM<span style=\"box-sizing: inherit; margin-left: 5px; color: rgb(57, 91, 182);\">FORBES ADVISOR</span></div><div class=\"recirc-articles\" style=\"box-sizing: inherit;\"><div class=\"recirc-block-padding\" style=\"box-sizing: inherit; padding-top: 13px; display: flex; justify-content: space-between;\"><div class=\"recirc-content\" style=\"box-sizing: inherit; padding-right: 10px; width: 334.719px;\"><a class=\"recirc-link\" href=\"https://www.forbes.com/advisor/travel-insurance/best-travel-insurance/?utm_source=forbes&utm_medium=recirc&utm_campaign=tirecircnov\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\"><h3 class=\"recirc-headline-no-margin\" data-ga-track=\"Advisor Recirc - Multiple Articles - Link 1\" style=\"box-sizing: inherit; margin-block: 0px; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: 700; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: Merriweather, GeorgiaCustom; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51);\">Best Travel Insurance Companies</h3></a><a class=\"recirc-author\" href=\"https://www.forbes.com/advisor/author/adanise/\" data-ga-track=\"InternalLink:https://www.forbes.com/advisor/author/adanise/\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); cursor: pointer; display: inline-block; text-decoration-color: rgb(51, 51, 51); font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 18px; font-family: \"Work Sans\", sans-serif;\">By<div class=\"recirc-author-name\" data-ga-track=\"InternalLink:https://www.forbes.com/advisor/author/adanise/\" style=\"box-sizing: inherit; display: inline-block; font-weight: 600; margin-left: 5px;\">Amy Danise</div><div class=\"recirc-author-type\" data-ga-track=\"InternalLink:https://www.forbes.com/advisor/author/adanise/\" style=\"box-sizing: inherit; display: inline-block; color: rgb(115, 115, 115); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 10px; line-height: 12px; margin-left: 5px;\">Editor</div></a></div><a class=\"recirc-img\" href=\"https://www.forbes.com/advisor/travel-insurance/best-travel-insurance/?utm_source=forbes&utm_medium=recirc&utm_campaign=tirecircnov\" aria-label=\"Graphic Best Travel Insurance Companies\" data-ga-track=\"Advisor Recirc - Multiple Articles - Link 1\" style=\"box-sizing: inherit; background-image: url(\"https://www.forbes.com/advisor/wp-content/uploads/2021/08/tropical-vacation.jpeg.jpg\"); background-position: 50% center; background-size: cover; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 56, 145); cursor: pointer; height: 0px; padding-bottom: 62.75px; width: 111.562px;\"></a></div><div class=\"recirc-block-padding\" style=\"box-sizing: inherit; padding-top: 13px; display: flex; justify-content: space-between;\"><div class=\"recirc-content\" style=\"box-sizing: inherit; padding-right: 10px; width: 334.719px;\"><a class=\"recirc-link\" href=\"https://www.forbes.com/advisor/travel-insurance/best-pandemic-travel-insurance/?utm_source=forbes&utm_medium=recirc&utm_campaign=tirecircnov\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\"><h3 class=\"recirc-headline-no-margin\" data-ga-track=\"Advisor Recirc - Multiple Articles - Link 2\" style=\"box-sizing: inherit; margin-block: 0px; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: 700; font-stretch: normal; font-size: 16px; line-height: 24px; font-family: Merriweather, GeorgiaCustom; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(51, 51, 51);\">Best Covid-19 Travel Insurance Plans</h3></a><a class=\"recirc-author\" href=\"https://www.forbes.com/advisor/author/adanise/\" data-ga-track=\"InternalLink:https://www.forbes.com/advisor/author/adanise/\" style=\"box-sizing: inherit; color: rgb(51, 51, 51); cursor: pointer; display: inline-block; text-decoration-color: rgb(51, 51, 51); font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: 18px; font-family: \"Work Sans\", sans-serif;\">By<div class=\"recirc-author-name\" data-ga-track=\"InternalLink:https://www.forbes.com/advisor/author/adanise/\" style=\"box-sizing: inherit; display: inline-block; font-weight: 600; margin-left: 5px;\">Amy Danise</div><div class=\"recirc-author-type\" data-ga-track=\"InternalLink:https://www.forbes.com/advisor/author/adanise/\" style=\"box-sizing: inherit; display: inline-block; color: rgb(115, 115, 115); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 10px; line-height: 12px; margin-left: 5px;\">Editor</div></a></div><a class=\"recirc-img\" href=\"https://www.forbes.com/advisor/travel-insurance/best-pandemic-travel-insurance/?utm_source=forbes&utm_medium=recirc&utm_campaign=tirecircnov\" aria-label=\"Graphic Best Covid-19 Travel Insurance Plans\" data-ga-track=\"Advisor Recirc - Multiple Articles - Link 2\" style=\"box-sizing: inherit; background-image: url(\"https://www.forbes.com/advisor/wp-content/uploads/2020/12/couple-traveling-2-e1608019949550.jpg\"); background-position: 50% center; background-size: cover; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 56, 145); cursor: pointer; height: 0px; padding-bottom: 62.75px; width: 111.562px;\"></a></div></div></div></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">Of course, it\'s constantly being updated, and we can expect it to get better. But as of now, it has a particular propensity to make up non-existent citations or to cite research and papers that bear no relationship to the topic at hand.</p><div class=\"newsletter-inline-flex\" style=\"box-sizing: inherit; border-bottom: 1px solid rgb(227, 227, 227); border-top: 1px solid rgb(227, 227, 227); display: flex; flex-direction: column; padding: 16px 0px; width: 446.297px; margin: 0px 0px 1.2rem; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><div id=\"initial-screen\" style=\"box-sizing: inherit; letter-spacing: 0.2px;\"><p class=\"newsletter-header\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; letter-spacing: 0.2px; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-weight: 600; font-stretch: normal; font-size: 16px; line-height: normal; font-family: \"Work Sans\", sans-serif;\">Forbes Daily: Get our best stories, exclusive reporting and essential analysis of the day’s news in your inbox every weekday.</p><div class=\"newsletter-email-flex\" style=\"box-sizing: inherit; letter-spacing: 0.2px; align-items: center; display: flex; flex-direction: row; margin-bottom: 16px; width: 446.297px;\"><input placeholder=\"Email address\" name=\"user-email\" id=\"user-email\" type=\"email\" class=\"newsletter-email-input\" style=\"box-sizing: inherit; font: 400 14px \"Work Sans\", sans-serif; margin-right: 16px; letter-spacing: 0.2px; background-color: rgb(255, 255, 255); border-width: 1px; border-style: solid; border-color: rgb(115, 115, 115); height: 48px; width: 325.609px; padding: 13px 16px;\"><button class=\"newsletter-submit-button newsletter-email-submit-button\" disabled=\"\" style=\"box-sizing: inherit; font: 550 14px \"Work Sans\", sans-serif; background: none rgb(0, 122, 200); border-width: initial; border-style: none; border-color: initial; cursor: pointer; outline: none; padding: 0px; letter-spacing: 0.2px; color: rgb(255, 255, 255); border-radius: 8px; height: 48px; width: 148px;\">Sign Up</button></div><p class=\"newsletter-inline-error-message\" style=\"box-sizing: inherit; margin: 1.2rem 0px; letter-spacing: 0.2px; color: rgb(244, 18, 30); font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: \"Work Sans\", sans-serif;\"></p><div class=\"newsletter-footer\" style=\"box-sizing: inherit; letter-spacing: 0.2px; color: rgb(115, 115, 115); font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 10px; line-height: normal; font-family: \"Work Sans\", sans-serif; margin: 0px;\">By signing up, you accept and agree to our <a href=\"https://www.forbes.com/terms-and-conditions\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer; letter-spacing: 0.2px; display: inline; flex-direction: column; justify-content: center; text-align: center;\">Terms of Service</a> (including the class action waiver and arbitration provisions), and you acknowledge our <a href=\"https://www.forbes.com/privacy\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer; letter-spacing: 0.2px; display: inline; flex-direction: column; justify-content: center; text-align: center;\">Privacy Statement</a>.</div></div></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">The key lesson is to check and double-check anything factual that it tells you. The internet (and the world) is already full of enough misinformation, and we certainly don\'t need to be adding to it. Particularly if you’re using it to create business content, it’s important to have stringent editing and reviewing processes in place for everything you publish. Of course, this is important for human-created content, too. But putting too much trust in the capabilities of AI can easily lead to mistakes that can make you look silly and could even damage your reputation.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><span style=\"font-weight: 700;\">Using it to replace original thinking</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">It\'s important to remember that, in some ways, AI – particularly language-based generative AI like ChatGPT – is similar to a search engine. Specifically, it\'s entirely reliant on the data it can access, which in this case, is the data it\'s been trained on. One consequence of this is that it will only regurgitate or reword existing ideas; it won’t create anything truly innovative or original like a human can.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">If you’re creating content for an audience, then it’s likely they come to you to learn about your unique experiences or benefit from your expertise in your field or because there\'s something about your personality or the way you communicate that appeals to them. You can’t replace this with generic AI-generated common knowledge. Emotions, feelings, random thoughts, and lived experiences feed into our ideas, and AI doesn’t replicate any of this. AI can certainly be a very useful tool for research and for helping us to organize our thoughts and working processes, but it won\'t generate that \"spark\" that enables successful businesses (and people) to distinguish themselves and excel at what they do.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><span style=\"box-sizing: inherit; font-weight: 700;\">Forgetting about privacy</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">When we’re working with cloud-based AI engines like ChatGPT or Dall-E 2, we don’t have any expectation of privacy. OpenAI – the creator of those specific tools – is upfront about this in its terms of use (you did read them, right?). It’s also worth noting that its privacy policy has <a href=\"https://gizmodo.com/chatgpt-free-ai-privacy-policy-posts-google-bard-bing-1850087438\" target=\"_blank\" class=\"color-link\" title=\"https://gizmodo.com/chatgpt-free-ai-privacy-policy-posts-google-bard-bing-1850087438\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://gizmodo.com/chatgpt-free-ai-privacy-policy-posts-google-bard-bing-1850087438\" aria-label=\"been called\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">been called</a> \"flimsy.\"</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">All of our interactions, including the data we input and the output it generates, are considered fair game for its own systems to ingest, store and learn from. For example, Microsoft <a href=\"https://www.fudzilla.com/news/ai/56411-microsoft-admits-reading-bing-chatbot-conversations\" target=\"_blank\" class=\"color-link\" title=\"https://www.fudzilla.com/news/ai/56411-microsoft-admits-reading-bing-chatbot-conversations\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://www.fudzilla.com/news/ai/56411-microsoft-admits-reading-bing-chatbot-conversations\" aria-label=\"has admitted\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">has admitted</a> that it monitors and reads conversations between Bing and its users. This means we have to be careful about entering personal and sensitive information. This could also apply to content such as business strategies, communications with clients, or internal company documents. There’s simply no guarantee they won’t be exposed in some way. An early public version of Microsoft’s ChatGPT-powered Bing was briefly pulled offline when it was found that it was occasionally sharing details of private conversations with other users.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">Many companies (and at least one country – <a href=\"https://www.bbc.co.uk/news/technology-65139406\" target=\"_blank\" class=\"color-link\" title=\"https://www.bbc.co.uk/news/technology-65139406\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://www.bbc.co.uk/news/technology-65139406\" aria-label=\"Italy\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">Italy</a>) have banned the use of ChatGPT due to concerns over privacy. If you do use it in a professional capacity, it is important to have safeguards in place, as well as to keep up-to-date on legal obligations that come with handling such data. Solutions exist for running local instances of applications, allowing data to be processed without leaving your jurisdiction. These could soon become essential for businesses in fields such as healthcare or finance, where handling private data is routine.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><span style=\"box-sizing: inherit; font-weight: 700;\">Becoming over-reliant</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">Developing an excessive reliance on AI could easily become a problem for a number of reasons. For example, there are numerous situations where services may become unavailable, like when users or service providers are hit by technical issues. Tools and applications can also be pulled offline for security or administrative reasons, such as to apply updates. Or they could be targeted by hackers with denial-of-service attacks, leaving them offline.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">Just as critically, over-reliance on AI could prevent us from developing and honing certain skills of our own that the AI tools are filling in for. This might include research, writing and communicating, summarizing, translating content for different audiences, or structuring information. These are skills that are important for professional growth and development, and neglecting to practice them could leave us at a disadvantage when we need them at a time when the assistance of AI isn’t available.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><span style=\"box-sizing: inherit; font-weight: 700;\">Losing the human touch</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">In a <a href=\"https://www.youtube.com/watch?v=nld_KTfij_g\" target=\"_blank\" class=\"color-link\" title=\"https://www.youtube.com/watch?v=nld_KTfij_g\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://www.youtube.com/watch?v=nld_KTfij_g\" aria-label=\"recent episode\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">recent episode</a> of South Park, the kids use ChatGPT to automate “boring” aspects of their lives – such as interacting with their loved ones (as well as cheating on their schoolwork). Obviously, this is played for laughs, but as with all good comedy, it’s also a commentary on life. Generative AI tools make it easy to automate emails, social messaging, content creation, and many other aspects of business and communications. At the same time, it can make it difficult to convey nuances and be an obstacle to empathy and relationship-building.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">It’s essential to remember that the idea is to use AI to augment our humanity – by freeing up time spent on mundane and repetitive tasks so that we can concentrate on what makes us human. This means interpersonal relationships, creativity, innovative thinking, and fun. If we start trying to automate those parts of our lives, we will be building a future for ourselves that’s just as damaging as the worst that the AI doom-mongers are predicting.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\"><br style=\"box-sizing: inherit;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.2rem; margin-left: 0px; color: rgb(51, 51, 51); font-family: Georgia, Cambria, \"Times New Roman\", Times, serif; font-size: 18px; font-variant-ligatures: common-ligatures; background-color: rgb(252, 252, 252);\">To stay on top of new and emerging business and tech trends, make sure to subscribe to <a href=\"https://lp.constantcontactpages.com/su/Tvmg4PM/newsletter\" target=\"_blank\" class=\"color-link\" title=\"https://lp.constantcontactpages.com/su/Tvmg4PM/newsletter\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://lp.constantcontactpages.com/su/Tvmg4PM/newsletter\" aria-label=\"my newsletter\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">my newsletter</a>, follow me on <a href=\"https://www.twitter.com/@bernardmarr\" target=\"_blank\" class=\"color-link\" title=\"https://www.twitter.com/@bernardmarr\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://www.twitter.com/@bernardmarr\" aria-label=\"Twitter\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">Twitter</a>, <a href=\"https://uk.linkedin.com/in/bernardmarr\" target=\"_blank\" class=\"color-link\" title=\"https://uk.linkedin.com/in/bernardmarr\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://uk.linkedin.com/in/bernardmarr\" aria-label=\"LinkedIn\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">LinkedIn</a>, and <a href=\"https://www.youtube.com/user/bernardmarr\" target=\"_blank\" class=\"color-link\" title=\"https://www.youtube.com/user/bernardmarr\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://www.youtube.com/user/bernardmarr\" aria-label=\"YouTube\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\">YouTube</a>, and check out my books, <a href=\"https://bernardmarr.com/books/\" target=\"_blank\" class=\"color-link\" title=\"https://bernardmarr.com/books/\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://bernardmarr.com/books/\" aria-label=\"Future Skills: The 20 Skills and Competencies Everyone Needs to Succeed in a Digital World\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\"><em data-ga-track=\"ExternalLink:https://bernardmarr.com/books/\" style=\"box-sizing: inherit;\">Future Skills: The 20 Skills and Competencies Everyone Needs to Succeed in a Digital World</em></a> and<em style=\"box-sizing: inherit;\"> </em><a href=\"https://bernardmarr.com/books/\" target=\"_blank\" class=\"color-link\" title=\"https://bernardmarr.com/books/\" rel=\"nofollow noopener noreferrer\" data-ga-track=\"ExternalLink:https://bernardmarr.com/books/\" aria-label=\"The Future Internet: How the Metaverse, Web 3.0, and Blockchain Will Transform Business and Society\" style=\"box-sizing: inherit; color: rgb(0, 56, 145); cursor: pointer;\"><em data-ga-track=\"ExternalLink:https://bernardmarr.com/books/\" style=\"box-sizing: inherit;\">The Future Internet: How the Metaverse, Web 3.0, and Blockchain Will Transform Business and Society</em></a>.</p><p><br></p>', '5 Bad ChatGPT Mistakes You Must AvoidADOBE STOCK', 'Rabu', '2023-10-11', '10:33:12', 'th1.jpg', 0, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(713, 19, 'admin', 'AI diprediksi gantikan ratusan juta pekerjaan tapi bisa juga ciptakan pekerjaan baru, menurut lapora', '', '', 'ai-diprediksi-gantikan-ratusan-juta-pekerjaan-tapi-bisa-juga-ciptakan-pekerjaan-baru-menurut-lapora', 'N', 'Y', 'N', '<div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10; font-family: \"Times New Roman\"; background-color: rgb(246, 246, 246);\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Kecerdasan buatan (AI) dapat menggantikan 300 juta pekerjaan penuh waktu, menurut laporan bank investasi Goldman Sachs.</span></p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10; font-family: \"Times New Roman\"; background-color: rgb(246, 246, 246);\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">AI bisa menggantikan seperempat pekerjaan di AS dan Eropa, tetapi bisa juga berarti menciptakan pekerjaan baru dan ledakan produktivitas.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10; font-family: \"Times New Roman\"; background-color: rgb(246, 246, 246);\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Pada akhirnya AI dapat meningkatkan total nilai tahunan barang dan jasa yang diproduksi secara global sebesar 7%.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10; font-family: \"Times New Roman\"; background-color: rgb(246, 246, 246);\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">AI generatif, yang mampu membuat konten identik dengan hasil pekerjaan manusia, merupakan \"kemajuan besar\", kata laporan tersebut.</p><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><h2 id=\"Prospek-pekerjaan\" tabindex=\"-1\" class=\"bbc-1aaitma eglt09e0\" style=\"box-sizing: inherit; line-height: 2.25rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; color: rgb(20, 20, 20); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 2rem 0px 1.5rem;\">Prospek pekerjaan</h2></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Pemerintah Inggris tertarik untuk mempromosikan investasi AI, yang katanya \"akan mendorong produktivitas di seluruh perekonomian\". Mereka juga telah mencoba meyakinkan publik tentang dampaknya.</p></div><div dir=\"ltr\" class=\"bbc-1n4f7vm ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><section data-e2e=\"recommendations-heading\" role=\"region\" aria-labelledby=\"recommendations-heading\" class=\"bbc-1saxq9t etbfg571\" style=\"box-sizing: inherit; margin: 0px 0px 1.5rem; padding: 1rem 0px;\"><div class=\"bbc-bjn8wh eveec6k2\" style=\"box-sizing: inherit; position: relative;\"><a href=\"https://www.bbc.com/indonesia/articles/cd17750mel7o#end-of-recommendations\" class=\"bbc-qhh6n eveec6k1\" style=\"box-sizing: inherit; background-color: rgb(255, 255, 255); font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; font-size: 0.8125rem; border: 0.125rem solid rgb(34, 34, 34); color: rgb(34, 34, 34); display: block; left: 0px; line-height: 1; padding: 0.75rem; position: absolute; top: 0px; z-index: 10; clip-path: inset(100%); clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; width: 1px; margin: 0px;\">Lewatkan Artikel-artikel yang direkomendasikan dan terus membaca</a><div class=\"etbfg570 bbc-1nwk127 e1m6nvxw1\" style=\"box-sizing: inherit; position: relative; z-index: 0; color: rgb(20, 20, 20); margin: 0px 0px 0.5rem; padding: 0px;\"><span class=\"bbc-1xclg2i e1m6nvxw0\" style=\"box-sizing: inherit; font-weight: bolder; margin: 0px; padding: 0px;\"><span class=\"bbc-1fttcpj e1fapd9x4\" style=\"box-sizing: inherit; display: flex; flex-direction: column;\"><span class=\"bbc-127x8fy e1fapd9x2\" style=\"box-sizing: inherit; display: flex; flex-flow: row; -webkit-box-pack: justify; justify-content: space-between; min-height: 2.75rem; -webkit-box-align: stretch; align-items: stretch;\"><span dir=\"ltr\" id=\"recommendations-heading\" class=\"bbc-1kexxce e1fapd9x1\" style=\"box-sizing: inherit; font-size: 1.5rem; line-height: 1.75rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; margin: 0px; padding-right: 1rem; display: flex; -webkit-box-align: center; align-items: center;\">Artikel-artikel yang direkomendasikan</span></span></span></span></div><ul dir=\"ltr\" class=\"ebmt73l0 bbc-1ulo99h e13i2e3d0\" role=\"list\" style=\"box-sizing: inherit; list-style-type: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; display: grid; position: initial; width: initial; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1; column-gap: 1rem;\"><li dir=\"ltr\" class=\"ebmt73l0 bbc-14u3acj e13i2e3d2\" role=\"listitem\" style=\"box-sizing: inherit; display: block; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1;\"><div dir=\"ltr\" class=\"bbc-1p4354k ebmt73l0\" style=\"box-sizing: inherit; display: grid; position: initial; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1; column-gap: 1rem;\"><div data-e2e=\"story-promo-wrapper\" class=\"bbc-pusxqu eyj10mi4\" style=\"box-sizing: inherit; position: relative; padding: 0.5rem; margin-top: 0.5rem; background-color: rgb(253, 253, 253);\"><div class=\"bbc-18x5xq4 eyj10mi3\" style=\"box-sizing: inherit; display: inline-block; position: relative; width: 7.5rem; vertical-align: top;\"><div data-e2e=\"image-placeholder\" class=\"bbc-997y1y eihqrxw0\" style=\"box-sizing: inherit; position: relative; height: 0px; overflow: hidden; background-color: rgb(242, 242, 242); background-position: center center; background-repeat: no-repeat; background-size: 93px 27px; width: 120px; background-image: url(\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI0NzkiIGhlaWdodD0iMTM2IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgZmlsbD0iI0Q1RDBDRCI+PGc+PHBhdGggZD0iTTQ0OS41NTYgOTEuNTUzbC0yLjMxIDEuNDFjLTExLjE2NyA2LjgxOC0yMy4zMTMgMTAuNDc0LTM0LjM0NiAxMC40Ny0yMy42MS0uMDktMzkuMTYzLTE0LjA4My0zOS4yMjctMzQuNDUzLjAzLTE5LjkxOCAxNi4yNy0zNC42NjMgMzguNjMzLTM0LjcxOCAxMS4zODcuMDEgMjEuNzAzIDIuOTU0IDMzLjk2MiA5LjY3MmwyLjI1MSAxLjI0di0xOC4xOWwtLjk2Mi0uMzc3Yy0xMy44MjQtNS40NTgtMjQuNTMtNy44OS0zNS4xMDMtNy44ODQtMTYuMzQ2LS4wMDYtMzAuNTMzIDUuMzk0LTQwLjYzNyAxNC41NTctMTAuMTA1IDkuMTYzLTE2LjEwNiAyMi4xMDItMTYuMDk5IDM2Ljk1My4wMDggMTAuMzQ4IDQuMjc5IDIyLjQ4IDEzLjQyIDMyLjEwNSA5LjEyMSA5LjYyOCAyMy4xNjUgMTYuNjQ4IDQyLjQzIDE2LjYzOWguMDYzYzE1Ljk4IDAgMjcuMDYyLTMuNTYzIDM3LjA3NC04LjQ5MmwuODUxLS40MTRWOTEuNTUzek0zMzQgMTM1LjY5N2gxNDQuMTk1VjBIMzM0djEzNS42OTd6Ii8+PHBhdGggZD0iTTI3Ni45MzcgODkuOTY4Yy4wNDEtMTIuMzMtOC4xNzEtMjEuNjk2LTIxLjMwOC0yNS4zIDMuNTQ0LTEuODA5IDYuMzUtNC4wMjMgOC40MDQtNi43MjcgMi43NS0zLjYyMiA0LjA2MS04LjA2NCA0LjA0Ni0xMy4yMzUuMDE1LTYuMzU5LTIuNDg2LTEyLjgzOS03Ljg1OC0xNy42ODctNS4zNzItNC44NDctMTMuNTI2LTcuOTk3LTI0LjY1NC03Ljk5MUgyMDQuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMTY3IDEzNS42OThoMTQ0LjE5N1YwSDE2N3YxMzUuNjk3eiIvPjxwYXRoIGQ9Ik0xMDkuOTM3IDg5Ljk2OGMuMDQxLTEyLjMzLTguMTcxLTIxLjY5Ni0yMS4zMDgtMjUuMyAzLjU0NC0xLjgwOSA2LjM1LTQuMDIzIDguNDA0LTYuNzI3IDIuNzUtMy42MjIgNC4wNjEtOC4wNjQgNC4wNDYtMTMuMjM1LjAxNS02LjM1OS0yLjQ4Ni0xMi44MzktNy44NTgtMTcuNjg3LTUuMzcyLTQuODQ3LTEzLjUyNi03Ljk5Ny0yNC42NTQtNy45OTFIMzcuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMCAxMzUuNjk4aDE0NC4xOTdWMEgwdjEzNS42OTd6Ii8+PHBhdGggZD0iTTI1OC42NjIgODguMTk4Yy0uMDEzIDMuMjI5LTEuMDA3IDYuNDc1LTMuODk2IDkuMDExLTIuODg0IDIuNTM3LTcuODczIDQuNDYzLTE2LjEzMyA0LjQ2M0gyMjJWNzVoMTUuODkzYzcuNDExIDAgMTIuNjcgMS41MDIgMTUuOTY1IDMuODUgMy4yODkgMi4zNjIgNC43NzYgNS40NjMgNC44MDQgOS4zNDgiLz48cGF0aCBkPSJNOTEuNjYyIDg4LjE5OGMtLjAxMyAzLjIyOS0xLjAwNyA2LjQ3NS0zLjg5NiA5LjAxMS0yLjg4NCAyLjUzNy03Ljg3NCA0LjQ2My0xNi4xMzMgNC40NjNINTVWNzVoMTUuODkyYzcuNDEyIDAgMTIuNjcyIDEuNTAyIDE1Ljk2NiAzLjg1IDMuMjg5IDIuMzYyIDQuNzc2IDUuNDYzIDQuODA0IDkuMzQ4Ii8+PHBhdGggZD0iTTI0NS4xODYgNTUuNzljMy4wOTYtMi4yMzcgNC41OS01LjM4NiA0LjYxMy0xMC4xMjQtLjAxNS0zLjI1LS45NDMtNi4wMzMtMy4yODEtOC4xMTEtMi4zNDYtMi4wNzgtNi4zMy0zLjU1NS0xMi43NTQtMy41NTVIMjIydjI1LjI3NWg4LjA3NmM2Ljk4OC4wMDQgMTEuOTk4LTEuMjQzIDE1LjExLTMuNDg2Ii8+PHBhdGggZD0iTTc4LjE4NiA1NS43OWMzLjA5Ni0yLjIzNyA0LjU5LTUuMzg2IDQuNjEzLTEwLjEyNC0uMDE1LTMuMjUtLjk0My02LjAzMy0zLjI4Mi04LjExMUM3Ny4xNzIgMzUuNDc3IDczLjE4OCAzNCA2Ni43NjQgMzRINTV2MjUuMjc1aDguMDc2YzYuOTg4LjAwNCAxMS45OTgtMS4yNDMgMTUuMTEtMy40ODYiLz48L2c+PC9nPjwvZz48L3N2Zz4K\"); padding-bottom: 67.5px;\"><div class=\"lazyload-wrapper \" style=\"box-sizing: inherit;\"><img srcset=\"https://ichef.bbci.co.uk/news/70/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 70w, https://ichef.bbci.co.uk/news/95/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 95w, https://ichef.bbci.co.uk/news/144/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 144w, https://ichef.bbci.co.uk/news/183/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 183w, https://ichef.bbci.co.uk/news/240/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 240w, https://ichef.bbci.co.uk/news/320/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 320w, https://ichef.bbci.co.uk/news/660/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg 660w\" src=\"https://ichef.bbci.co.uk/news/660/cpsprodpb/e476/live/c8b2f790-0872-11ee-b5af-25e80c61c11a.jpg\" alt=\"tenaga kerja\" width=\"976\" height=\"549\" class=\"e3vrtyk0 bbc-rb7xa0 e1mo64ex0\" style=\"box-sizing: inherit; display: block; width: 120px; height: auto;\"></div></div></div><div class=\"bbc-14nqykl eyj10mi2\" style=\"box-sizing: inherit; display: inline-block; width: calc(100% - 7.5rem); padding: 0px 1rem; vertical-align: top; height: 67.5px;\"><div class=\"bbc-qfvcgz eyj10mi0\" style=\"box-sizing: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; font-size: 1rem; line-height: 1.25rem; color: rgb(20, 20, 20); margin: 0px; height: 67.5px; display: flex; -webkit-box-align: center; align-items: center;\"><a href=\"https://www.bbc.com/indonesia/articles/c5123kvx666o\" class=\"bbc-1qrye4j eyj10mi1\" style=\"box-sizing: inherit; position: static; color: rgb(20, 20, 20); overflow-wrap: break-word;\">Kriteria kandidat pekerja yang \'sempurna\' telah berubah, apa sekarang yang menjadi prioritas?</a></div></div></div></div></li><li dir=\"ltr\" class=\"ebmt73l0 bbc-14u3acj e13i2e3d2\" role=\"listitem\" style=\"box-sizing: inherit; display: block; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1;\"><div dir=\"ltr\" class=\"bbc-1p4354k ebmt73l0\" style=\"box-sizing: inherit; display: grid; position: initial; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1; column-gap: 1rem;\"><div data-e2e=\"story-promo-wrapper\" class=\"bbc-pusxqu eyj10mi4\" style=\"box-sizing: inherit; position: relative; padding: 0.5rem; margin-top: 0.5rem; background-color: rgb(253, 253, 253);\"><div class=\"bbc-18x5xq4 eyj10mi3\" style=\"box-sizing: inherit; display: inline-block; position: relative; width: 7.5rem; vertical-align: top;\"><div data-e2e=\"image-placeholder\" class=\"bbc-997y1y eihqrxw0\" style=\"box-sizing: inherit; position: relative; height: 0px; overflow: hidden; background-color: rgb(242, 242, 242); background-position: center center; background-repeat: no-repeat; background-size: 93px 27px; width: 120px; background-image: url(\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI0NzkiIGhlaWdodD0iMTM2IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgZmlsbD0iI0Q1RDBDRCI+PGc+PHBhdGggZD0iTTQ0OS41NTYgOTEuNTUzbC0yLjMxIDEuNDFjLTExLjE2NyA2LjgxOC0yMy4zMTMgMTAuNDc0LTM0LjM0NiAxMC40Ny0yMy42MS0uMDktMzkuMTYzLTE0LjA4My0zOS4yMjctMzQuNDUzLjAzLTE5LjkxOCAxNi4yNy0zNC42NjMgMzguNjMzLTM0LjcxOCAxMS4zODcuMDEgMjEuNzAzIDIuOTU0IDMzLjk2MiA5LjY3MmwyLjI1MSAxLjI0di0xOC4xOWwtLjk2Mi0uMzc3Yy0xMy44MjQtNS40NTgtMjQuNTMtNy44OS0zNS4xMDMtNy44ODQtMTYuMzQ2LS4wMDYtMzAuNTMzIDUuMzk0LTQwLjYzNyAxNC41NTctMTAuMTA1IDkuMTYzLTE2LjEwNiAyMi4xMDItMTYuMDk5IDM2Ljk1My4wMDggMTAuMzQ4IDQuMjc5IDIyLjQ4IDEzLjQyIDMyLjEwNSA5LjEyMSA5LjYyOCAyMy4xNjUgMTYuNjQ4IDQyLjQzIDE2LjYzOWguMDYzYzE1Ljk4IDAgMjcuMDYyLTMuNTYzIDM3LjA3NC04LjQ5MmwuODUxLS40MTRWOTEuNTUzek0zMzQgMTM1LjY5N2gxNDQuMTk1VjBIMzM0djEzNS42OTd6Ii8+PHBhdGggZD0iTTI3Ni45MzcgODkuOTY4Yy4wNDEtMTIuMzMtOC4xNzEtMjEuNjk2LTIxLjMwOC0yNS4zIDMuNTQ0LTEuODA5IDYuMzUtNC4wMjMgOC40MDQtNi43MjcgMi43NS0zLjYyMiA0LjA2MS04LjA2NCA0LjA0Ni0xMy4yMzUuMDE1LTYuMzU5LTIuNDg2LTEyLjgzOS03Ljg1OC0xNy42ODctNS4zNzItNC44NDctMTMuNTI2LTcuOTk3LTI0LjY1NC03Ljk5MUgyMDQuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMTY3IDEzNS42OThoMTQ0LjE5N1YwSDE2N3YxMzUuNjk3eiIvPjxwYXRoIGQ9Ik0xMDkuOTM3IDg5Ljk2OGMuMDQxLTEyLjMzLTguMTcxLTIxLjY5Ni0yMS4zMDgtMjUuMyAzLjU0NC0xLjgwOSA2LjM1LTQuMDIzIDguNDA0LTYuNzI3IDIuNzUtMy42MjIgNC4wNjEtOC4wNjQgNC4wNDYtMTMuMjM1LjAxNS02LjM1OS0yLjQ4Ni0xMi44MzktNy44NTgtMTcuNjg3LTUuMzcyLTQuODQ3LTEzLjUyNi03Ljk5Ny0yNC42NTQtNy45OTFIMzcuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMCAxMzUuNjk4aDE0NC4xOTdWMEgwdjEzNS42OTd6Ii8+PHBhdGggZD0iTTI1OC42NjIgODguMTk4Yy0uMDEzIDMuMjI5LTEuMDA3IDYuNDc1LTMuODk2IDkuMDExLTIuODg0IDIuNTM3LTcuODczIDQuNDYzLTE2LjEzMyA0LjQ2M0gyMjJWNzVoMTUuODkzYzcuNDExIDAgMTIuNjcgMS41MDIgMTUuOTY1IDMuODUgMy4yODkgMi4zNjIgNC43NzYgNS40NjMgNC44MDQgOS4zNDgiLz48cGF0aCBkPSJNOTEuNjYyIDg4LjE5OGMtLjAxMyAzLjIyOS0xLjAwNyA2LjQ3NS0zLjg5NiA5LjAxMS0yLjg4NCAyLjUzNy03Ljg3NCA0LjQ2My0xNi4xMzMgNC40NjNINTVWNzVoMTUuODkyYzcuNDEyIDAgMTIuNjcyIDEuNTAyIDE1Ljk2NiAzLjg1IDMuMjg5IDIuMzYyIDQuNzc2IDUuNDYzIDQuODA0IDkuMzQ4Ii8+PHBhdGggZD0iTTI0NS4xODYgNTUuNzljMy4wOTYtMi4yMzcgNC41OS01LjM4NiA0LjYxMy0xMC4xMjQtLjAxNS0zLjI1LS45NDMtNi4wMzMtMy4yODEtOC4xMTEtMi4zNDYtMi4wNzgtNi4zMy0zLjU1NS0xMi43NTQtMy41NTVIMjIydjI1LjI3NWg4LjA3NmM2Ljk4OC4wMDQgMTEuOTk4LTEuMjQzIDE1LjExLTMuNDg2Ii8+PHBhdGggZD0iTTc4LjE4NiA1NS43OWMzLjA5Ni0yLjIzNyA0LjU5LTUuMzg2IDQuNjEzLTEwLjEyNC0uMDE1LTMuMjUtLjk0My02LjAzMy0zLjI4Mi04LjExMUM3Ny4xNzIgMzUuNDc3IDczLjE4OCAzNCA2Ni43NjQgMzRINTV2MjUuMjc1aDguMDc2YzYuOTg4LjAwNCAxMS45OTgtMS4yNDMgMTUuMTEtMy40ODYiLz48L2c+PC9nPjwvZz48L3N2Zz4K\"); padding-bottom: 67.4531px;\"><div class=\"lazyload-wrapper \" style=\"box-sizing: inherit;\"><img srcset=\"https://ichef.bbci.co.uk/news/70/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 70w, https://ichef.bbci.co.uk/news/95/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 95w, https://ichef.bbci.co.uk/news/144/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 144w, https://ichef.bbci.co.uk/news/183/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 183w, https://ichef.bbci.co.uk/news/240/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 240w, https://ichef.bbci.co.uk/news/320/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 320w, https://ichef.bbci.co.uk/news/660/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg 660w\" src=\"https://ichef.bbci.co.uk/news/660/cpsprodpb/d6db/live/a0bbe040-2a0e-11ee-a1af-dd14c64ad1dc.jpg\" alt=\"Aksi unjuk rasa pengemudi ojek daring pada tahun 2019 mengenai hubungan kemitraan dengan perusahaan aplikasi digital yang disebut mengeksploitasi mereka. \" width=\"772\" height=\"434\" class=\"e3vrtyk0 bbc-rb7xa0 e1mo64ex0\" style=\"box-sizing: inherit; display: block; width: 120px; height: auto;\"></div></div></div><div class=\"bbc-14nqykl eyj10mi2\" style=\"box-sizing: inherit; display: inline-block; width: calc(100% - 7.5rem); padding: 0px 1rem; vertical-align: top; height: 67.4531px;\"><div class=\"bbc-qfvcgz eyj10mi0\" style=\"box-sizing: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; font-size: 1rem; line-height: 1.25rem; color: rgb(20, 20, 20); margin: 0px; height: 67.4531px; display: flex; -webkit-box-align: center; align-items: center;\"><a href=\"https://www.bbc.com/indonesia/articles/c512ke1yw59o\" class=\"bbc-1qrye4j eyj10mi1\" style=\"box-sizing: inherit; position: static; color: rgb(20, 20, 20); overflow-wrap: break-word;\">Derita pengemudi ojek online sehari dapat Rp10.000 bahkan kadang nol rupiah</a></div></div></div></div></li><li dir=\"ltr\" class=\"ebmt73l0 bbc-14u3acj e13i2e3d2\" role=\"listitem\" style=\"box-sizing: inherit; display: block; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1;\"><div dir=\"ltr\" class=\"bbc-1p4354k ebmt73l0\" style=\"box-sizing: inherit; display: grid; position: initial; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1; column-gap: 1rem;\"><div data-e2e=\"story-promo-wrapper\" class=\"bbc-pusxqu eyj10mi4\" style=\"box-sizing: inherit; position: relative; padding: 0.5rem; margin-top: 0.5rem; background-color: rgb(253, 253, 253);\"><div class=\"bbc-18x5xq4 eyj10mi3\" style=\"box-sizing: inherit; display: inline-block; position: relative; width: 7.5rem; vertical-align: top;\"><div data-e2e=\"image-placeholder\" class=\"bbc-997y1y eihqrxw0\" style=\"box-sizing: inherit; position: relative; height: 0px; overflow: hidden; background-color: rgb(242, 242, 242); background-position: center center; background-repeat: no-repeat; background-size: 93px 27px; width: 120px; background-image: url(\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI0NzkiIGhlaWdodD0iMTM2IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgZmlsbD0iI0Q1RDBDRCI+PGc+PHBhdGggZD0iTTQ0OS41NTYgOTEuNTUzbC0yLjMxIDEuNDFjLTExLjE2NyA2LjgxOC0yMy4zMTMgMTAuNDc0LTM0LjM0NiAxMC40Ny0yMy42MS0uMDktMzkuMTYzLTE0LjA4My0zOS4yMjctMzQuNDUzLjAzLTE5LjkxOCAxNi4yNy0zNC42NjMgMzguNjMzLTM0LjcxOCAxMS4zODcuMDEgMjEuNzAzIDIuOTU0IDMzLjk2MiA5LjY3MmwyLjI1MSAxLjI0di0xOC4xOWwtLjk2Mi0uMzc3Yy0xMy44MjQtNS40NTgtMjQuNTMtNy44OS0zNS4xMDMtNy44ODQtMTYuMzQ2LS4wMDYtMzAuNTMzIDUuMzk0LTQwLjYzNyAxNC41NTctMTAuMTA1IDkuMTYzLTE2LjEwNiAyMi4xMDItMTYuMDk5IDM2Ljk1My4wMDggMTAuMzQ4IDQuMjc5IDIyLjQ4IDEzLjQyIDMyLjEwNSA5LjEyMSA5LjYyOCAyMy4xNjUgMTYuNjQ4IDQyLjQzIDE2LjYzOWguMDYzYzE1Ljk4IDAgMjcuMDYyLTMuNTYzIDM3LjA3NC04LjQ5MmwuODUxLS40MTRWOTEuNTUzek0zMzQgMTM1LjY5N2gxNDQuMTk1VjBIMzM0djEzNS42OTd6Ii8+PHBhdGggZD0iTTI3Ni45MzcgODkuOTY4Yy4wNDEtMTIuMzMtOC4xNzEtMjEuNjk2LTIxLjMwOC0yNS4zIDMuNTQ0LTEuODA5IDYuMzUtNC4wMjMgOC40MDQtNi43MjcgMi43NS0zLjYyMiA0LjA2MS04LjA2NCA0LjA0Ni0xMy4yMzUuMDE1LTYuMzU5LTIuNDg2LTEyLjgzOS03Ljg1OC0xNy42ODctNS4zNzItNC44NDctMTMuNTI2LTcuOTk3LTI0LjY1NC03Ljk5MUgyMDQuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMTY3IDEzNS42OThoMTQ0LjE5N1YwSDE2N3YxMzUuNjk3eiIvPjxwYXRoIGQ9Ik0xMDkuOTM3IDg5Ljk2OGMuMDQxLTEyLjMzLTguMTcxLTIxLjY5Ni0yMS4zMDgtMjUuMyAzLjU0NC0xLjgwOSA2LjM1LTQuMDIzIDguNDA0LTYuNzI3IDIuNzUtMy42MjIgNC4wNjEtOC4wNjQgNC4wNDYtMTMuMjM1LjAxNS02LjM1OS0yLjQ4Ni0xMi44MzktNy44NTgtMTcuNjg3LTUuMzcyLTQuODQ3LTEzLjUyNi03Ljk5Ny0yNC42NTQtNy45OTFIMzcuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMCAxMzUuNjk4aDE0NC4xOTdWMEgwdjEzNS42OTd6Ii8+PHBhdGggZD0iTTI1OC42NjIgODguMTk4Yy0uMDEzIDMuMjI5LTEuMDA3IDYuNDc1LTMuODk2IDkuMDExLTIuODg0IDIuNTM3LTcuODczIDQuNDYzLTE2LjEzMyA0LjQ2M0gyMjJWNzVoMTUuODkzYzcuNDExIDAgMTIuNjcgMS41MDIgMTUuOTY1IDMuODUgMy4yODkgMi4zNjIgNC43NzYgNS40NjMgNC44MDQgOS4zNDgiLz48cGF0aCBkPSJNOTEuNjYyIDg4LjE5OGMtLjAxMyAzLjIyOS0xLjAwNyA2LjQ3NS0zLjg5NiA5LjAxMS0yLjg4NCAyLjUzNy03Ljg3NCA0LjQ2My0xNi4xMzMgNC40NjNINTVWNzVoMTUuODkyYzcuNDEyIDAgMTIuNjcyIDEuNTAyIDE1Ljk2NiAzLjg1IDMuMjg5IDIuMzYyIDQuNzc2IDUuNDYzIDQuODA0IDkuMzQ4Ii8+PHBhdGggZD0iTTI0NS4xODYgNTUuNzljMy4wOTYtMi4yMzcgNC41OS01LjM4NiA0LjYxMy0xMC4xMjQtLjAxNS0zLjI1LS45NDMtNi4wMzMtMy4yODEtOC4xMTEtMi4zNDYtMi4wNzgtNi4zMy0zLjU1NS0xMi43NTQtMy41NTVIMjIydjI1LjI3NWg4LjA3NmM2Ljk4OC4wMDQgMTEuOTk4LTEuMjQzIDE1LjExLTMuNDg2Ii8+PHBhdGggZD0iTTc4LjE4NiA1NS43OWMzLjA5Ni0yLjIzNyA0LjU5LTUuMzg2IDQuNjEzLTEwLjEyNC0uMDE1LTMuMjUtLjk0My02LjAzMy0zLjI4Mi04LjExMUM3Ny4xNzIgMzUuNDc3IDczLjE4OCAzNCA2Ni43NjQgMzRINTV2MjUuMjc1aDguMDc2YzYuOTg4LjAwNCAxMS45OTgtMS4yNDMgMTUuMTEtMy40ODYiLz48L2c+PC9nPjwvZz48L3N2Zz4K\"); padding-bottom: 67.3906px;\"><div class=\"lazyload-wrapper \" style=\"box-sizing: inherit;\"><img srcset=\"https://ichef.bbci.co.uk/news/70/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 70w, https://ichef.bbci.co.uk/news/95/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 95w, https://ichef.bbci.co.uk/news/144/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 144w, https://ichef.bbci.co.uk/news/183/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 183w, https://ichef.bbci.co.uk/news/240/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 240w, https://ichef.bbci.co.uk/news/320/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 320w, https://ichef.bbci.co.uk/news/660/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg 660w\" src=\"https://ichef.bbci.co.uk/news/660/cpsprodpb/a40d/live/d6f830c0-fa0a-11ed-92cc-b3a9bf1f67e9.jpg\" alt=\"Kecerdasan buatan China\" width=\"974\" height=\"547\" class=\"e3vrtyk0 bbc-rb7xa0 e1mo64ex0\" style=\"box-sizing: inherit; display: block; width: 120px; height: auto;\"></div></div></div><div class=\"bbc-14nqykl eyj10mi2\" style=\"box-sizing: inherit; display: inline-block; width: calc(100% - 7.5rem); padding: 0px 1rem; vertical-align: top; height: 67.3906px;\"><div class=\"bbc-qfvcgz eyj10mi0\" style=\"box-sizing: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; font-size: 1rem; line-height: 1.25rem; color: rgb(20, 20, 20); margin: 0px; height: 67.3906px; display: flex; -webkit-box-align: center; align-items: center;\"><a href=\"https://www.bbc.com/indonesia/articles/crge09l06neo\" class=\"bbc-1qrye4j eyj10mi1\" style=\"box-sizing: inherit; position: static; color: rgb(20, 20, 20); overflow-wrap: break-word;\">ChatGPT: Bisakah China menyalip AS dalam perlombaan mengembangkan kecerdasan buatan?</a></div></div></div></div></li><li dir=\"ltr\" class=\"ebmt73l0 bbc-14u3acj e13i2e3d2\" role=\"listitem\" style=\"box-sizing: inherit; display: block; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1; border: none;\"><div dir=\"ltr\" class=\"bbc-1p4354k ebmt73l0\" style=\"box-sizing: inherit; display: grid; position: initial; width: initial; margin: 0px; grid-template-columns: repeat(1, 1fr); grid-column-end: span 1; column-gap: 1rem;\"><div data-e2e=\"story-promo-wrapper\" class=\"bbc-pusxqu eyj10mi4\" style=\"box-sizing: inherit; position: relative; padding: 0.5rem; margin-top: 0.5rem; background-color: rgb(253, 253, 253);\"><div class=\"bbc-18x5xq4 eyj10mi3\" style=\"box-sizing: inherit; display: inline-block; position: relative; width: 7.5rem; vertical-align: top;\"><div data-e2e=\"image-placeholder\" class=\"bbc-997y1y eihqrxw0\" style=\"box-sizing: inherit; position: relative; height: 0px; overflow: hidden; background-color: rgb(242, 242, 242); background-position: center center; background-repeat: no-repeat; background-size: 93px 27px; width: 120px; background-image: url(\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI0NzkiIGhlaWdodD0iMTM2IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgZmlsbD0iI0Q1RDBDRCI+PGc+PHBhdGggZD0iTTQ0OS41NTYgOTEuNTUzbC0yLjMxIDEuNDFjLTExLjE2NyA2LjgxOC0yMy4zMTMgMTAuNDc0LTM0LjM0NiAxMC40Ny0yMy42MS0uMDktMzkuMTYzLTE0LjA4My0zOS4yMjctMzQuNDUzLjAzLTE5LjkxOCAxNi4yNy0zNC42NjMgMzguNjMzLTM0LjcxOCAxMS4zODcuMDEgMjEuNzAzIDIuOTU0IDMzLjk2MiA5LjY3MmwyLjI1MSAxLjI0di0xOC4xOWwtLjk2Mi0uMzc3Yy0xMy44MjQtNS40NTgtMjQuNTMtNy44OS0zNS4xMDMtNy44ODQtMTYuMzQ2LS4wMDYtMzAuNTMzIDUuMzk0LTQwLjYzNyAxNC41NTctMTAuMTA1IDkuMTYzLTE2LjEwNiAyMi4xMDItMTYuMDk5IDM2Ljk1My4wMDggMTAuMzQ4IDQuMjc5IDIyLjQ4IDEzLjQyIDMyLjEwNSA5LjEyMSA5LjYyOCAyMy4xNjUgMTYuNjQ4IDQyLjQzIDE2LjYzOWguMDYzYzE1Ljk4IDAgMjcuMDYyLTMuNTYzIDM3LjA3NC04LjQ5MmwuODUxLS40MTRWOTEuNTUzek0zMzQgMTM1LjY5N2gxNDQuMTk1VjBIMzM0djEzNS42OTd6Ii8+PHBhdGggZD0iTTI3Ni45MzcgODkuOTY4Yy4wNDEtMTIuMzMtOC4xNzEtMjEuNjk2LTIxLjMwOC0yNS4zIDMuNTQ0LTEuODA5IDYuMzUtNC4wMjMgOC40MDQtNi43MjcgMi43NS0zLjYyMiA0LjA2MS04LjA2NCA0LjA0Ni0xMy4yMzUuMDE1LTYuMzU5LTIuNDg2LTEyLjgzOS03Ljg1OC0xNy42ODctNS4zNzItNC44NDctMTMuNTI2LTcuOTk3LTI0LjY1NC03Ljk5MUgyMDQuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMTY3IDEzNS42OThoMTQ0LjE5N1YwSDE2N3YxMzUuNjk3eiIvPjxwYXRoIGQ9Ik0xMDkuOTM3IDg5Ljk2OGMuMDQxLTEyLjMzLTguMTcxLTIxLjY5Ni0yMS4zMDgtMjUuMyAzLjU0NC0xLjgwOSA2LjM1LTQuMDIzIDguNDA0LTYuNzI3IDIuNzUtMy42MjIgNC4wNjEtOC4wNjQgNC4wNDYtMTMuMjM1LjAxNS02LjM1OS0yLjQ4Ni0xMi44MzktNy44NTgtMTcuNjg3LTUuMzcyLTQuODQ3LTEzLjUyNi03Ljk5Ny0yNC42NTQtNy45OTFIMzcuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMCAxMzUuNjk4aDE0NC4xOTdWMEgwdjEzNS42OTd6Ii8+PHBhdGggZD0iTTI1OC42NjIgODguMTk4Yy0uMDEzIDMuMjI5LTEuMDA3IDYuNDc1LTMuODk2IDkuMDExLTIuODg0IDIuNTM3LTcuODczIDQuNDYzLTE2LjEzMyA0LjQ2M0gyMjJWNzVoMTUuODkzYzcuNDExIDAgMTIuNjcgMS41MDIgMTUuOTY1IDMuODUgMy4yODkgMi4zNjIgNC43NzYgNS40NjMgNC44MDQgOS4zNDgiLz48cGF0aCBkPSJNOTEuNjYyIDg4LjE5OGMtLjAxMyAzLjIyOS0xLjAwNyA2LjQ3NS0zLjg5NiA5LjAxMS0yLjg4NCAyLjUzNy03Ljg3NCA0LjQ2My0xNi4xMzMgNC40NjNINTVWNzVoMTUuODkyYzcuNDEyIDAgMTIuNjcyIDEuNTAyIDE1Ljk2NiAzLjg1IDMuMjg5IDIuMzYyIDQuNzc2IDUuNDYzIDQuODA0IDkuMzQ4Ii8+PHBhdGggZD0iTTI0NS4xODYgNTUuNzljMy4wOTYtMi4yMzcgNC41OS01LjM4NiA0LjYxMy0xMC4xMjQtLjAxNS0zLjI1LS45NDMtNi4wMzMtMy4yODEtOC4xMTEtMi4zNDYtMi4wNzgtNi4zMy0zLjU1NS0xMi43NTQtMy41NTVIMjIydjI1LjI3NWg4LjA3NmM2Ljk4OC4wMDQgMTEuOTk4LTEuMjQzIDE1LjExLTMuNDg2Ii8+PHBhdGggZD0iTTc4LjE4NiA1NS43OWMzLjA5Ni0yLjIzNyA0LjU5LTUuMzg2IDQuNjEzLTEwLjEyNC0uMDE1LTMuMjUtLjk0My02LjAzMy0zLjI4Mi04LjExMUM3Ny4xNzIgMzUuNDc3IDczLjE4OCAzNCA2Ni43NjQgMzRINTV2MjUuMjc1aDguMDc2YzYuOTg4LjAwNCAxMS45OTgtMS4yNDMgMTUuMTEtMy40ODYiLz48L2c+PC9nPjwvZz48L3N2Zz4K\"); padding-bottom: 67.5px;\"><div class=\"lazyload-wrapper \" style=\"box-sizing: inherit;\"><img srcset=\"https://ichef.bbci.co.uk/news/70/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 70w, https://ichef.bbci.co.uk/news/95/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 95w, https://ichef.bbci.co.uk/news/144/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 144w, https://ichef.bbci.co.uk/news/183/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 183w, https://ichef.bbci.co.uk/news/240/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 240w, https://ichef.bbci.co.uk/news/320/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 320w, https://ichef.bbci.co.uk/news/660/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg 660w\" src=\"https://ichef.bbci.co.uk/news/660/cpsprodpb/3b96/live/86bc8800-bb25-11ed-89f4-f3657d2bfa3b.jpg\" alt=\"chatGPT\" width=\"2309\" height=\"1299\" class=\"e3vrtyk0 bbc-rb7xa0 e1mo64ex0\" style=\"box-sizing: inherit; display: block; width: 120px; height: auto;\"></div></div></div><div class=\"bbc-14nqykl eyj10mi2\" style=\"box-sizing: inherit; display: inline-block; width: calc(100% - 7.5rem); padding: 0px 1rem; vertical-align: top; height: 67.5px;\"><div class=\"bbc-qfvcgz eyj10mi0\" style=\"box-sizing: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; font-size: 1rem; line-height: 1.25rem; color: rgb(20, 20, 20); margin: 0px; height: 67.5px; display: flex; -webkit-box-align: center; align-items: center;\"><a href=\"https://www.bbc.com/indonesia/articles/c4nz7mmgpw7o\" class=\"bbc-1qrye4j eyj10mi1\" style=\"box-sizing: inherit; position: static; color: rgb(20, 20, 20); overflow-wrap: break-word;\">ChatGPT: Bagaimana jika kecerdasan buatan menginginkan perasaan dan emosi?</a></div></div></div></div></li></ul><p tabindex=\"-1\" id=\"end-of-recommendations\" class=\"bbc-10a2avq eveec6k0\" style=\"box-sizing: inherit; clip-path: inset(100%); clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; width: 1px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Akhir dari Artikel-artikel yang direkomendasikan</p></div></section></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Kami ingin memastikan bahwa AI melengkapi cara kami bekerja di Inggris, bukan mengganggunya - membuat pekerjaan kami lebih baik, bukan menghilangkannya,\" kata Sekretaris Teknologi Michelle Donelan kepada Sun.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Laporan tersebut mencatat dampak AI akan bervariasi di berbagai sektor. Misalnya pada pekerjaan administrasi dapat diotomatisasi sebanyak 46% dan 44% pada profesi hukum.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Namun, pada sektor konstruksi hanya 6% dan sektor pemeliharaan hanya 4%, katanya.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">BBC News sebelumnya telah melaporkan kekhawatiran beberapa seniman bahwa generator gambar AI dapat membahayakan prospek pekerjaan mereka.</p><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><h2 id=\"Upah-lebih-rendah\" tabindex=\"-1\" class=\"bbc-1aaitma eglt09e0\" style=\"box-sizing: inherit; line-height: 2.25rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; color: rgb(20, 20, 20); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 2rem 0px 1.5rem;\">\'Upah lebih rendah\'</h2></div><div dir=\"ltr\" class=\"bbc-4quw3x e1rfboeq7\" style=\"box-sizing: inherit; float: right; height: auto; width: 290.391px; direction: ltr; margin: 0.25rem 1rem 1.5rem; margin-inline: 1rem 0px;\"><section role=\"region\" aria-labelledby=\"podcast-promo\" class=\"e1rfboeq6 bbc-12e4ke4 e1s8ztj50\" style=\"box-sizing: inherit; background-color: rgb(242, 242, 242); padding: 0px;\"><div class=\"bbc-bjn8wh eveec6k2\" style=\"box-sizing: inherit; position: relative;\"><a href=\"https://www.bbc.com/indonesia/articles/cd17750mel7o#end-of-podcasts\" class=\"bbc-qhh6n eveec6k1\" style=\"box-sizing: inherit; background-color: rgb(255, 255, 255); font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; font-size: 0.8125rem; border: 0.125rem solid rgb(34, 34, 34); color: rgb(34, 34, 34); display: block; left: 0px; line-height: 1; padding: 0.75rem; position: absolute; top: 0px; z-index: 10; clip-path: inset(100%); clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; width: 1px; margin: 0px;\">Lewati Podcast dan lanjutkan membaca</a><div class=\"bbc-fmy3ga etl18e90\" style=\"box-sizing: inherit; position: relative; background-color: rgb(255, 255, 255);\"><div class=\"bbc-ef85uv e1rfboeq5\" style=\"box-sizing: inherit; width: 290.391px; margin: 0px; padding: 0px; -webkit-box-flex: 0; flex: 0 0 11.125rem;\"><div data-e2e=\"image-placeholder\" class=\"bbc-997y1y eihqrxw0\" style=\"box-sizing: inherit; position: relative; height: 0px; overflow: hidden; background-color: rgb(242, 242, 242); background-position: center center; background-repeat: no-repeat; background-size: 93px 27px; width: 290.391px; background-image: url(\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48c3ZnIHdpZHRoPSI0NzkiIGhlaWdodD0iMTM2IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgZmlsbD0iI0Q1RDBDRCI+PGc+PHBhdGggZD0iTTQ0OS41NTYgOTEuNTUzbC0yLjMxIDEuNDFjLTExLjE2NyA2LjgxOC0yMy4zMTMgMTAuNDc0LTM0LjM0NiAxMC40Ny0yMy42MS0uMDktMzkuMTYzLTE0LjA4My0zOS4yMjctMzQuNDUzLjAzLTE5LjkxOCAxNi4yNy0zNC42NjMgMzguNjMzLTM0LjcxOCAxMS4zODcuMDEgMjEuNzAzIDIuOTU0IDMzLjk2MiA5LjY3MmwyLjI1MSAxLjI0di0xOC4xOWwtLjk2Mi0uMzc3Yy0xMy44MjQtNS40NTgtMjQuNTMtNy44OS0zNS4xMDMtNy44ODQtMTYuMzQ2LS4wMDYtMzAuNTMzIDUuMzk0LTQwLjYzNyAxNC41NTctMTAuMTA1IDkuMTYzLTE2LjEwNiAyMi4xMDItMTYuMDk5IDM2Ljk1My4wMDggMTAuMzQ4IDQuMjc5IDIyLjQ4IDEzLjQyIDMyLjEwNSA5LjEyMSA5LjYyOCAyMy4xNjUgMTYuNjQ4IDQyLjQzIDE2LjYzOWguMDYzYzE1Ljk4IDAgMjcuMDYyLTMuNTYzIDM3LjA3NC04LjQ5MmwuODUxLS40MTRWOTEuNTUzek0zMzQgMTM1LjY5N2gxNDQuMTk1VjBIMzM0djEzNS42OTd6Ii8+PHBhdGggZD0iTTI3Ni45MzcgODkuOTY4Yy4wNDEtMTIuMzMtOC4xNzEtMjEuNjk2LTIxLjMwOC0yNS4zIDMuNTQ0LTEuODA5IDYuMzUtNC4wMjMgOC40MDQtNi43MjcgMi43NS0zLjYyMiA0LjA2MS04LjA2NCA0LjA0Ni0xMy4yMzUuMDE1LTYuMzU5LTIuNDg2LTEyLjgzOS03Ljg1OC0xNy42ODctNS4zNzItNC44NDctMTMuNTI2LTcuOTk3LTI0LjY1NC03Ljk5MUgyMDQuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMTY3IDEzNS42OThoMTQ0LjE5N1YwSDE2N3YxMzUuNjk3eiIvPjxwYXRoIGQ9Ik0xMDkuOTM3IDg5Ljk2OGMuMDQxLTEyLjMzLTguMTcxLTIxLjY5Ni0yMS4zMDgtMjUuMyAzLjU0NC0xLjgwOSA2LjM1LTQuMDIzIDguNDA0LTYuNzI3IDIuNzUtMy42MjIgNC4wNjEtOC4wNjQgNC4wNDYtMTMuMjM1LjAxNS02LjM1OS0yLjQ4Ni0xMi44MzktNy44NTgtMTcuNjg3LTUuMzcyLTQuODQ3LTEzLjUyNi03Ljk5Ny0yNC42NTQtNy45OTFIMzcuODN2OTcuNzI4aDM2LjA3M2MxMi44NyAwIDIxLjkwNi0zLjQ4MiAyNy43MjItOC42NSA1LjgxOC01LjE1NSA4LjMyLTExLjkxIDguMzEyLTE4LjEzOHpNMCAxMzUuNjk4aDE0NC4xOTdWMEgwdjEzNS42OTd6Ii8+PHBhdGggZD0iTTI1OC42NjIgODguMTk4Yy0uMDEzIDMuMjI5LTEuMDA3IDYuNDc1LTMuODk2IDkuMDExLTIuODg0IDIuNTM3LTcuODczIDQuNDYzLTE2LjEzMyA0LjQ2M0gyMjJWNzVoMTUuODkzYzcuNDExIDAgMTIuNjcgMS41MDIgMTUuOTY1IDMuODUgMy4yODkgMi4zNjIgNC43NzYgNS40NjMgNC44MDQgOS4zNDgiLz48cGF0aCBkPSJNOTEuNjYyIDg4LjE5OGMtLjAxMyAzLjIyOS0xLjAwNyA2LjQ3NS0zLjg5NiA5LjAxMS0yLjg4NCAyLjUzNy03Ljg3NCA0LjQ2My0xNi4xMzMgNC40NjNINTVWNzVoMTUuODkyYzcuNDEyIDAgMTIuNjcyIDEuNTAyIDE1Ljk2NiAzLjg1IDMuMjg5IDIuMzYyIDQuNzc2IDUuNDYzIDQuODA0IDkuMzQ4Ii8+PHBhdGggZD0iTTI0NS4xODYgNTUuNzljMy4wOTYtMi4yMzcgNC41OS01LjM4NiA0LjYxMy0xMC4xMjQtLjAxNS0zLjI1LS45NDMtNi4wMzMtMy4yODEtOC4xMTEtMi4zNDYtMi4wNzgtNi4zMy0zLjU1NS0xMi43NTQtMy41NTVIMjIydjI1LjI3NWg4LjA3NmM2Ljk4OC4wMDQgMTEuOTk4LTEuMjQzIDE1LjExLTMuNDg2Ii8+PHBhdGggZD0iTTc4LjE4NiA1NS43OWMzLjA5Ni0yLjIzNyA0LjU5LTUuMzg2IDQuNjEzLTEwLjEyNC0uMDE1LTMuMjUtLjk0My02LjAzMy0zLjI4Mi04LjExMUM3Ny4xNzIgMzUuNDc3IDczLjE4OCAzNCA2Ni43NjQgMzRINTV2MjUuMjc1aDguMDc2YzYuOTg4LjAwNCAxMS45OTgtMS4yNDMgMTUuMTEtMy40ODYiLz48L2c+PC9nPjwvZz48L3N2Zz4K\"); padding-bottom: 290.391px;\"><div class=\"lazyload-wrapper \" style=\"box-sizing: inherit;\"><img sizes=\"(min-width: 1008px) 228px, 30vw\" src=\"https://ichef.bbci.co.uk/images/ic/448xn/p0btnm4z.jpg\" alt=\"Investigasi: Skandal Adopsi\" width=\"100\" height=\"100\" class=\"e3vrtyk0 bbc-rb7xa0 e1mo64ex0\" style=\"box-sizing: inherit; display: block; width: 290.391px; height: auto;\"></div></div></div><div class=\"podcastIconWrapper bbc-sasnzl e1rfboeq0\" style=\"box-sizing: inherit; position: absolute; transform: translateY(-100%); display: flex; -webkit-box-align: center; align-items: center; padding: 0.5rem;\"><svg viewBox=\"0 0 32 32\" width=\"32\" height=\"32\" focusable=\"false\" aria-hidden=\"true\" class=\"bbc-1yr7azq e1s2dgdk1\"><path d=\"M18.7,31h-5.3l-2.3-10.4C12.3,19.5,14,19,16,19s3.7,0.5,4.9,1.7L18.7,31z M22,8.2c-1.7-1.7-3.9-2.5-6.1-2.5s-4.4,0.9-6,2.5 l1.7,1.7c1.2-1.2,2.7-1.8,4.3-1.8s3.1,0.6,4.3,1.8L22,8.2z M25.5,4.9c-2.6-2.7-6.1-4-9.5-4S9.1,2.3,6.5,4.9l1.7,1.7 c2.1-2.1,4.9-3.2,7.7-3.2c2.8,0,5.6,1.1,7.8,3.2L25.5,4.9z M12.4,14c0,2,1.5,3.6,3.6,3.6c2,0,3.6-1.5,3.6-3.6 c0-2.1-1.5-3.6-3.6-3.6C13.9,10.4,12.4,11.9,12.4,14z\"></path></svg></div><div class=\"bbc-15oiryy e1rfboeq4\" style=\"box-sizing: inherit; flex: 1 1 0%; padding: 0px 1rem 1rem;\"><span style=\"box-sizing: inherit; font-weight: bolder;\"><a href=\"https://www.bbc.com/indonesia/podcasts/p0btnmzx\" class=\"bbc-18njhee e1rfboeq1\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.25rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; display: block; margin-top: 1rem; color: rgb(20, 20, 20);\"><span id=\"podcast-promo\" class=\"podcast-promo--hover podcast-promo--focus podcast-promo--visited\" style=\"box-sizing: inherit;\">Investigasi: Skandal Adopsi</span></a></span><p class=\"e1rfboeq3 bbc-q42u5y e4mef340\" style=\"box-sizing: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; max-width: 30rem; font-size: 0.8125rem; line-height: 1rem; margin-top: 1rem; margin-right: 0px; margin-left: 0px; overflow-wrap: break-word; color: rgb(20, 20, 20);\">Investigasi untuk menyibak tabir adopsi ilegal dari Indonesia ke Belanda di masa lalu</p><p dir=\"ltr\" class=\"e1rfboeq2 bbc-1g7f9u0 eh4j0a10\" style=\"box-sizing: inherit; display: inline; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 0.875rem; line-height: 1.125rem; color: rgb(20, 20, 20); margin-right: 0.25rem; margin-bottom: 0px; margin-left: 0.25rem;\"><svg viewBox=\"0 0 32 32\" width=\"32\" height=\"32\" focusable=\"false\" aria-hidden=\"true\" class=\"bbc-1sfse8y e1s2dgdk0\"><polygon points=\"4 6 11.1 6 26 6 26 28 28 28 28 4 4 4 4 6\"></polygon><polygon points=\"8 0 8 2 30 2 30 24 32 24 32 0 8 0\"></polygon><path d=\"M0,32H24V8H0ZM4,12H20V28H4Z\"></path></svg>Episode</p></div></div><p tabindex=\"-1\" id=\"end-of-podcasts\" class=\"bbc-10a2avq eveec6k0\" style=\"box-sizing: inherit; clip-path: inset(100%); clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; width: 1px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Akhir dari Podcast</p></div></section></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Satu-satunya hal yang saya yakini adalah tidak ada cara untuk mengetahui berapa banyak pekerjaan yang akan digantikan oleh AI generatif,\" kata Carl Benedikt Frey, direktur pekerjaan masa depan di Sekolah Oxford Martin, Universitas Oxford, kepada BBC News.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">“Apa yang dilakukan ChatGPT, misalnya, memungkinkan lebih banyak orang dengan kemampuan menulis rata-rata untuk menghasilkan esai dan artikel.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Oleh karena itu, jurnalis akan menghadapi lebih banyak persaingan, yang akan menurunkan upah, kecuali kita melihat peningkatan permintaan yang sangat signifikan untuk pekerjaan semacam itu.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Coba lihat pengenalan teknologi GPS dan platform seperti Uber. Tiba-tiba, mengetahui semua jalan di London memiliki nilai yang jauh lebih rendah, akibatnya pengemudi lama mengalami pemotongan gaji yang besar, sekitar 10% menurut penelitian kami.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Hasilnya adalah upah yang lebih rendah, bukan lebih sedikit pengemudi.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Selama beberapa tahun ke depan, AI generatif kemungkinan akan memiliki efek serupa pada serangkaian tugas kreatif yang lebih luas\".</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><h2 id=\"‘Jangan-dipercaya-sepenuhnya\" tabindex=\"-1\" class=\"bbc-1aaitma eglt09e0\" style=\"box-sizing: inherit; line-height: 2.25rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-weight: 700; color: rgb(20, 20, 20); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 2rem 0px 1.5rem;\">‘Jangan dipercaya sepenuhnya’</h2></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Menurut penelitian yang dikutip oleh laporan tersebut, 60% pekerja melakukan pekerjaan yang tidak ada pada 1940.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Namun, penelitian lain menunjukkan perubahan teknologi yang terjadi sejak 1980-an lebih cepat menggantikan para pekerja dibandingkan menciptakan lapangan kerja.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Dan jika AI generatif seperti kemajuan teknologi informasi sebelumnya, menurut simpulan laporan tersebut, hal itu dapat mengurangi lapangan kerja dalam waktu dekat.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">Dampak jangka panjang dari AI, bagaimanapun, sangat tidak pasti, kata kepala eksekutif wadah pemikir Resolution Foundation Torsten Bell kepada BBC News.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Jadi semua prediksi perusahaan itu jangan dipercaya sepenuhnya”.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Kita tidak tahu bagaimana teknologi akan berkembang atau bagaimana perusahaan akan mengintegrasikannya ke dalam cara kerja mereka,\" katanya.</p></div><div dir=\"ltr\" class=\"bbc-19j92fr ebmt73l0\" style=\"box-sizing: inherit; margin: 0px; width: initial; grid-template-columns: repeat(10, 1fr); grid-column: 5 / span 10;\"><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\">\"Itu tidak berarti bahwa AI tidak akan mengganggu cara kita bekerja, tetapi kita juga harus fokus pada potensi standar hidup yang diperoleh dari pekerjaan dengan produktivitas lebih tinggi dan layanan yang lebih murah untuk dijalankan, serta risiko tertinggal jika perusahaan dan ekonomi lain beradaptasi dengan lebih baik terhadap perubahan teknologi.\"</p></div><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\"><br></p></div><p dir=\"ltr\" class=\"bbc-1y32vyc e17g058b0\" style=\"box-sizing: inherit; font-size: 1rem; line-height: 1.375rem; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; color: rgb(20, 20, 20); padding-bottom: 1.5rem; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-right: 2.5rem;\"><br></p></div>', '', 'Rabu', '2023-10-11', '10:28:34', 'brita11.jpg', 0, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(710, 19, 'admin', 'Dengan AI Generatif Dapat Menghemat Waktu', '', '', 'dengan-ai-generatif-dapat-menghemat-waktu', 'N', 'N', 'N', '<p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Selama kampanye, Meta juga dapat menampilkan kombinasi teks berbeda kepada orang berbeda. Dengan demikian dapat dilihat mana yang menghasilkan respons lebih baik. </p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Kendati demikian, Meta tidak akan menampilkan detail kinerja untuk setiap variasi teks tertentu, karena pelaporan saat ini didasarkan pada satu iklan. </p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Namun, Meta juga mengatakan bahwa semakin banyak opsi yang dipilih pengiklan untuk dijalankan, semakin banyak peluang yang dimiliki untuk meningkatkan kinerja iklan mereka.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Menurut laporan <em>Reuters</em>, Kamis (5/10/2023), Meta mengatakan pihaknya telah menguji fitur-fitur AI ini dengan sejumlah kecil pengiklan, tetapi beragam pada bulan Mei 2023.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Hasil awal menunjukkan bahwa AI generatif akan menghemat lima jam atau lebih per minggu, atau total satu bulan per tahun. Namun, perusahaan mengakui bahwa masih harus ada penyesuaian <em>output</em> AI generatif. Dengan demikian didapat hasil yang sesuai dengan gaya masing-masing pengiklan.</p>', 'Ilustrasi artificial intelligence. (Foto: Shutterstock)', 'Rabu', '2023-10-11', '09:53:23', '222.jpg', 0, '', 'Y'),
(709, 19, 'admin', 'Meta Meluncurkan Fitur AI Generatif untuk Pengiklan', '', '', 'meta-meluncurkan-fitur-ai-generatif-untuk-pengiklan', 'N', 'Y', 'N', '<div class=\"article-content-body__item-page \" data-page=\"1\" data-title=\"\" style=\"font-size: 15px; line-height: 23px; color: rgb(68, 68, 68);\"><div class=\"article-content-body__item-content\" data-component-name=\"desktop:read-page:article-content-body:section:text\"><p style=\"overflow-wrap: break-word;\"><span style=\"color: rgb(255, 51, 0); font-size: 14px; font-family: Inter;\">Liputan6.com, Jakarta -</span> <a href=\"https://www.liputan6.com/tag/meta\" style=\"color: rgb(255, 51, 0);\">Meta</a> meluncurkan fitur AI (kecerdasan buatan) generatif pertamanya untuk para pengiklan.</p><p style=\"overflow-wrap: break-word;\">Fitur baru ini memungkinkan pengiklan menggunakan AI untuk membuat latar belakang, memperluas gambar, dan menghasilkan beberapa versi teks iklan berdasarkan salinan aslinya. </p><div data-cache-key=\"https_liputan6.com:bump:TextTypeArticle#5415442::isNotMobile::4fe969673e1ec4a176edce28697ac4c9\" data-cache-ttl=\"360\" data-component-name=\"desktop:read-page:article-content-body:section:bacajuga\"><div class=\"baca-juga-collections\" data-category=\"Tech News\"><div class=\"baca-juga-collections__detail\" style=\"margin: 20px 0px; position: relative; border-left: 5px solid rgb(255, 102, 0); padding-left: 10px; font-weight: 600; color: rgb(0, 0, 0);\">BACA JUGA:<a href=\"https://www.liputan6.com/tekno/read/5410049/headset-mixed-reality-meta-quest-3-dirilis-pakai-snapdragon-xr2-gen-2\" style=\"color: rgb(36, 96, 170); display: block; line-height: 1.6;\">Headset Mixed Reality Meta Quest 3 Dirilis, Pakai Snapdragon XR2 Gen 2</a></div></div><div id=\"div-gpt-ad-liputan6-inarticle-oop\" data-info=\"ad\"></div></div><p style=\"overflow-wrap: break-word;\">Peluncuran fitur baru ini menyusul peluncuran Quest-3 <em>mixed-reality headset </em>dan sejumlah produk AI generatif lainnya dalam acara Meta Connect minggu lalu.</p><p style=\"overflow-wrap: break-word;\">Dikutip dari<em> Tech Crunch</em>, Jumat (6/10/2023), dalam hal alat <a href=\"https://www.liputan6.com/tag/ai\" style=\"color: rgb(255, 51, 0);\">AI</a> untuk industri periklanan, produk-produk baru ini tidak seperti AI selebriti yang memungkinkan pengguna mengobrol dengan versi virtual para selebriti.</p><p style=\"overflow-wrap: break-word;\">Produk-produk baru ini menunjukkan bagaimana Meta percaya bahwa AI generatif dapat membantu merek dan bisnis. Dengan demikian, para pengiklan dapat memberikan pemasukan pendapatan bagi Meta.</p><p style=\"overflow-wrap: break-word;\">Terdapat tiga fitur yang dihadirkan oleh Meta. Fitur pertama, memungkinkan <a href=\"https://www.liputan6.com/tag/pengiklan\" style=\"color: rgb(255, 51, 0);\">pengiklan</a> menyesuaikan aset materi iklannya dengan membuat berbagai latar belakang berbeda untuk mengubah tampilan gambar produknya. </p><p style=\"overflow-wrap: break-word;\">Hal ini mirip dengan teknologi yang digunakan Meta untuk membuat alat <em>Backdrop</em> yang dapat digunakan oleh konsumen. Alat <em>Backdrop </em>ini memungkinkan pengguna mengubah pemandangan atau latar belakang gambar dengan menggunakan petunjuk. </p><p style=\"overflow-wrap: break-word;\">Namun, dalam perangkat periklanan, latar belakang dibuat untuk pengiklan berdasarkan gambar produk asli mereka dan cenderung berupa “latar belakang sederhana dengan warna dan pola. </p><p style=\"overflow-wrap: break-word;\">Fitur ini tersedia bagi pengiklan yang menggunakan katalog <a href=\"https://www.liputan6.com/tag/advantage\" style=\"color: rgb(255, 51, 0);\">Advantage+</a> perusahaan untuk membuat iklan penjualan mereka.</p><p style=\"overflow-wrap: break-word;\"> </p></div></div>', 'Facebook mengubah namanya menjadi Meta. (Doc: The Verge)', 'Rabu', '2023-10-11', '09:48:58', 'meta.jpg', 0, '', 'Y'),
(708, 19, 'admin', 'AI Bisa Prediksi Gempa Bumi dengan Akurasi 70 Persen', '', '', 'ai-bisa-prediksi-gempa-bumi-dengan-akurasi-70-persen', 'N', 'Y', 'N', '<p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\"><span style=\"color: rgb(255, 51, 0); font-size: 14px; font-family: Inter;\">Liputan6.com, Jakarta -</span> Prediksi <a href=\"https://www.liputan6.com/tag/bencana-alam\" style=\"color: rgb(255, 51, 0);\">bencana alam</a>, khususnya gempa bumi, menjadi sebuah tantangan serius dan membawa risiko bagi masyarakat luas.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Kini, bersamaan dengan adanya perkembangan AI (kecerdasan buatan), para peneliti telah mengembangkan teknologi ini untuk memprediksi adanya gempa bumi.</p><div data-cache-key=\"https_liputan6.com:bump:TextTypeArticle#5418897::isNotMobile::4fe969673e1ec4a176edce28697ac4c9\" data-cache-ttl=\"360\" data-component-name=\"desktop:read-page:article-content-body:section:bacajuga\" style=\"color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\"><div class=\"baca-juga-collections\" data-category=\"Tech News\"><div class=\"baca-juga-collections__detail\" style=\"margin: 20px 0px; position: relative; border-left: 5px solid rgb(255, 102, 0); padding-left: 10px; font-weight: 600; color: rgb(0, 0, 0);\">BACA JUGA:<a href=\"https://www.liputan6.com/cek-fakta/read/5418490/penguasaan-digital-jadi-salah-satu-elemen-penting-kehidupan-saat-ini\" style=\"color: rgb(36, 96, 170); display: block; line-height: 1.6;\">Penguasaan Digital Jadi Salah Satu Elemen Penting Kehidupan Saat Ini</a></div></div><div id=\"div-gpt-ad-liputan6-inarticle-oop\" data-info=\"ad\"></div></div><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Dengan model AI baru, sebesar 70 persen gempa bumi dapat diprediksi satu minggu sebelum terjadi. Dan hal ini telah diuji coba selama tujuh bulan di Tiongkok.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Kehadiran teknologi ini, diharapkan dapat digunakan untuk membatasi dampak <a href=\"https://www.liputan6.com/tag/gempa-bumi\" style=\"color: rgb(255, 51, 0);\">gempa bumi</a> terhadap kehidupan dan perekonomian.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Diberitakan <em>News18</em>, Selasa (10/10/2023), model AI yang dikembangkan oleh para peneliti Universitas Texas di Austin ini, dilatih untuk mendeteksi perubahan statistik dalam data seismik <em>real-time</em> yang telah dipasangkan oleh para peneliti dengan gempa bumi sebelumnya.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Hasilnya, <a href=\"https://www.liputan6.com/tag/ai\" style=\"color: rgb(255, 51, 0);\">AI</a> berhasil memprediksi 14 gempa bumi dalam jarak sekitar 200 mil dari perkiraan akan terjadi. Tidak hanya itu, ini juga memberikan prediksi kekuatan gempa yang hampir sama persis dengan hitungan. </p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">AI hanya melewatkan satu gempa bumi dan memberikan delapan peringatan palsu.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Sejauh ini, belum diketahui apakah pendekatan yang sama akan berhasil di lokasi lain. Kendati demikian, upaya ini merupakan tonggak sejarah dalam penelitian prakiraan gempa bumi berbasis AI.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">“Memprediksi gempa bumi adalah hal yang paling penting,” kata Sergey Fomel, Profesor di Biro <a href=\"https://www.liputan6.com/tag/geologi\" style=\"color: rgb(255, 51, 0);\">Geologi</a> Ekonomi UT.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">“Kami belum bisa membuat prediksi di mana pun di dunia. Namun, apa yang kami capai menunjukkan bahwa apa yang kami anggap sebagai masalah mustahil pada prinsipnya dapat dipecahkan,” tambahnya.</p>', 'Ilustrasi Artificial Intelligence (AI), Machine Learning (ML). Kredit: Gerd Altmann from Pixabay', 'Rabu', '2023-10-11', '09:44:19', '008999500_1581411087-artificial-intelligence-3382507_192011.jpg', 2, '', 'Y'),
(707, 19, 'admin', 'AI Dibekali Serangkaian Fitur Statistik', '', '', 'ai-dibekali-serangkaian-fitur-statistik', 'N', 'Y', 'N', '<p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Hasil temuan dari uji coba model AI baru untuk memprediksi gempa bumi ini dipublikasikan dalam jurnal <em>Bulletin of the Seismological Society of America.</em></p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Para peneliti mengatakan metode mereka berhasil dengan mengikuti pendekatan pembelajaran mesin yang relatif sederhana. AI diberi serangkaian fitur statistik berdasarkan pengetahuan tim tentang fisika gempa bumi. Kemudian diminta untuk melatih dirinya sendiri berdasarkan database rekaman seismik selama lima tahun.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Setelah dilatih, AI memberikan ramalannya dengan mendengarkan tanda-tanda gempa bumi yang akan terjadi di tengah gemuruh latar belakang Bumi.</p><p style=\"overflow-wrap: break-word; color: rgb(68, 68, 68); font-family: Inter, arial, helvetica, sans-serif; font-size: 15px;\">Para peneliti yakin bahwa di tempat-tempat dengan jaringan pelacakan seismik yang kuat, seperti California, Italia, Jepang, Yunani, Turki, dan Texas, AI dapat meningkatkan tingkat keberhasilannya dan mempersempit prediksi hingga beberapa puluh mil saja.</p>', 'lustrasi seismograf. (iStockphoto)', 'Rabu', '2023-10-11', '09:30:05', 'BERITA1.jpg', 1, '', 'Y'),
(722, 19, 'admin', 'Cara Menangani Laptop yang Sering Hang', '', '', 'cara-menangani-laptop-yang-sering-hang', 'N', 'N', 'N', '<p><strong style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">TAGAR.id, Jakarta</strong><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">- Laptop hang merujuk pada keadaan ketika laptop menjadi tidak responsif atau membeku. Ini berarti laptop tidak merespons input pengguna, tampilan tetap tidak berubah, dan Anda mungkin tidak dapat menjalankan atau menutup program apa pun.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Pada dasarnya, laptop menjadi terjebak dalam kondisi tertentu dan tidak berfungsi sebagaimana mestinya.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Ketika laptop hang, ini bisa disebabkan berbagai faktor seperti:</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">1. Overheating (Panas Berlebihan)</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Komponen laptop yang panas berlebihan dapat menyebabkan laptop menjadi tidak responsif. Ini bisa disebabkan oleh pendinginan yang buruk atau beban kerja berat.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">2. Kekurangan Sumber Daya</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Jika laptop tidak memiliki cukup RAM atau daya pemrosesan untuk menjalankan program atau tugas tertentu, bisa menyebabkan laptop menjadi hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">3. Program Bermasalah</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Program atau&nbsp;</span><a href=\"https://www.tagar.id/tag/aplikasi\" title=\"aplikasi\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">aplikasi</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;yang tidak responsif atau bermasalah dapat mengakibatkan laptop hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">4. Driver Tidak Kompatibel</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Driver perangkat keras yang tidak kompatibel dengan sistem operasi dapat menyebabkan masalah kinerja dan mengakibatkan laptop hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">5. Infeksi&nbsp;</span><a href=\"https://www.tagar.id/tag/malware\" title=\"Malware\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">Malware</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;atau Virus&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Serangan malware atau virus dapat menyebabkan laptop mengalami masalah hang atau menjadi tidak responsif.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">6. Kesalahan Sistem Operasi</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Kadang-kadang, kesalahan dalam sistem operasi dapat mengakibatkan laptop menjadi tidak stabil.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">7. Konflik Perangkat Keras</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Konflik antara perangkat keras yang berbeda dapat mengakibatkan masalah hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">8. Masalah Hardware</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Kerusakan atau masalah pada komponen hardware, seperti RAM, hard drive, atau motherboard, dapat menyebabkan laptop hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">9. Kinerja Terbebani</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Jika laptop Anda menjalankan terlalu banyak aplikasi atau tugas yang berat secara bersamaan, ini dapat mengakibatkan beban kinerja yang berlebihan dan mengakibatkan laptop hang.</span></p><p><span style=\"font-family: SF-Pro-Display-Light; font-size: 24px;\">Cara Menangani Laptop yang Sering Hang</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Laptop yang sering mengalami masalah hang atau tidak responsif bisa menjadi sangat mengganggu. Berikut adalah beberapa langkah yang bisa Anda coba untuk mengatasi masalah ini:</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">1. Restart Laptop</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Langkah pertama yang sederhana adalah dengan merestart laptop Anda. Terkadang, masalah sementara bisa diatasi dengan merestart sistem.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">2. Periksa Penggunaan Sumber Daya</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Buka Task Manager (Ctrl + Shift + Esc atau Ctrl + Alt + Delete) untuk memeriksa apakah ada aplikasi atau proses yang memakan sumber daya CPU atau RAM secara berlebihan. Tutup aplikasi yang tidak perlu atau yang menyebabkan masalah.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">3. Perbarui Sistem Operasi dan Driver</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Pastikan sistem operasi Anda dan driver perangkat keras terbaru. Pembaruan perangkat lunak dapat mengatasi masalah keamanan dan kinerja yang mungkin menjadi penyebab laptop menjadi hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">4. Cek Virus dan Malware</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Scan laptop Anda dengan perangkat lunak antivirus dan anti-malware yang terpercaya. Kadang-kadang, virus atau malware dapat menyebabkan laptop menjadi lambat atau mengalami masalah hang.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">5. Hapus File Sementara</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Membersihkan file sementara, cache, dan file yang tidak diperlukan dapat membantu memperbaiki masalah performa yang buruk.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">6. Pengaturan Listrik dan Baterai</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Pastikan laptop Anda tidak dalam mode hemat daya yang dapat membatasi kinerja. Juga, jika masalah terjadi saat laptop dihubungkan dengan charger atau baterai, coba ganti mode pengaturan daya.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">7. Periksa Pendinginan</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Overheating (panas berlebihan) dapat menyebabkan laptop mengalami masalah kinerja. Pastikan ventilasi laptop tidak terhalang dan menggunakan laptop di permukaan datar yang memungkinkan aliran udara yang baik.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">8. Uninstall Aplikasi Tidak Diperlukan</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Hapus atau uninstall aplikasi yang jarang digunakan atau tidak diperlukan. Terlalu banyak aplikasi yang berjalan dalam latar belakang dapat memengaruhi kinerja.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">9. Disk Clean-Up</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Gunakan alat Disk Clean-Up bawaan di Windows atau aplikasi pihak ketiga untuk membersihkan file sampah, cache, dan file sementara.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">10. Defrag Hard Drive (HDD)</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Jika Anda menggunakan HDD (bukan SSD), Anda dapat mencoba melakukan defragmentasi pada hard drive untuk mengoptimalkan penyimpanan data.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">11. Periksa Hardware</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Jika masalah terus berlanjut, ada kemungkinan masalah terkait hardware. Anda dapat membawa laptop Anda ke profesional untuk diperiksa lebih lanjut.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Jika setelah melakukan langkah-langkah di atas masalah masih berlanjut, mungkin ada masalah yang lebih serius dengan komponen laptop atau sistem operasinya. Dalam kasus seperti itu, lebih baik mendapatkan bantuan dari teknisi atau profesional IT yang terampil.&nbsp;</span></p>', '', 'Rabu', '2023-10-11', '15:57:18', '1692693460478-laptop.jpg', 0, '', 'Y'),
(719, 19, 'admin', 'FBI Keluarkan Peringatan Terkait dengan Bahaya Kecerdasan Buatan', '', '', 'fbi-keluarkan-peringatan-terkait-dengan-bahaya-kecerdasan-buatan', 'Y', 'Y', 'Y', '<p><span style=\"background-color: initial; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium; font-weight: bolder;\">TAGAR.id</span><span style=\"background-color: initial; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;- Ketika banyak orang di Amerika Serikat (AS) mulai menjajaki cara menggunakan kecerdasan buatan (artificial intelligence/AI) untuk membuat hidup mereka lebih mudah, musuh-musuh AS dan geng-geng kriminal juga mulai bergerak maju dengan rencana untuk mengeksploitasi teknologi tersebut dengan mengorbankan warga AS.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Direktur Biro Penyelidik Federal AS (Federal Bureau of Investigation/FBI), Christopher Wray, mengeluarkan peringatan tersebut pada Senin, 18 September 2023, dalam sebuah konferensi keamanan siber di&nbsp;</span><a href=\"https://www.tagar.id/tag/washington\" title=\"Washington\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">Washington</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;bahwa kecerdasan buatan, atau AI, “sudah siap untuk disalahgunakan.”</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Penjahat dan pemerintah asing yang bermusuhan sudah mengeksploitasi&nbsp;</span><a href=\"https://www.tagar.id/tag/teknologi\" title=\"teknologi\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">teknologi</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;tersebut,” kata Wray, tanpa menjelaskan secara spesifik.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Meskipun AI generatif dapat menghemat waktu masyarakat yang taat hukum dengan mengotomatisasikan tugas-tugasnya, AI generatif juga dapat mempermudah pelaku kejahatan untuk melakukan hal-hal seperti menghasilkan deepfake (manipulasi penampilan wajah) dan kode-kode berbahaya serta dapat menyediakan alat bagi pelaku penipuan untuk mengembangkan sistem yang semakin kuat, canggih, dan dapat disesuaikan dengan kebutuhan), dan kemampuan yang terukur,” katanya.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Para pejabat FBI, misalnya, pada Juli 2023 memperingatkan bahwa ekstremis kekerasan dan teroris telah bereksperimen dengan AI untuk membuat bahan peledak dengan lebih mudah.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Mereka mengatakan semakin banyak penjahat yang tampaknya tertarik pada teknologi untuk melakukan segala hal, mulai dari kejahatan kecil hingga pencurian uang. Namun, China adalah negara yang menjadi penyebab utama kekhawatiran ini.</span></p><p><img src=\"http://localhost/himatifuq/asset/images/1695154133876-taksi-cruise.jpg\" style=\"width: 763.021px; height: 572.266px;\"><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\"><br></span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\">Taksi Cruise yang menggunakan mobil swakemudi dengan teknologi kecerdasan buatan sedang menjemput penumpang di Distrik Mission, San Francisco, 15 Februari 2023. (Foto: voaindonesia.com/Terry Chea/AP Photo)</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\"><br></span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Para pejabat Badan Keamanan Nasional (National Security Agency/NSA) telah memperingatkan bahwa Beijing mulai menggunakan AI untuk menyebarkan propaganda melalui saluran berita palsu tahun lalu.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Ini hanyalah puncak gunung es,” kata David Frederick, asisten wakil direktur NSA untuk China, pada pertemuan puncak keamanan siber sebelumnya bulan ini. “Kecerdasan buatan akan memungkinkan operasi pengaruh jahat yang lebih efektif,” tambahnya.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Kekhawatiran seperti ini didukung oleh perusahaan-perusahaan keamanan siber swasta. Microsoft, misalnya, pada awal bulan ini memperingatkan bahwa para aktor dunia maya yang terkait dengan China telah mulai menggunakan AI untuk menghasilkan “konten yang menarik perhatian” untuk upaya disinformasi yang telah menarik perhatian para pemilih di AS.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Kita memperkirakan China akan terus menyempurnakan teknologi ini dari waktu ke waktu, meskipun masih harus dilihat bagaimana dan kapan China akan menerapkannya dalam skala besar,” kata Microsoft.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Sementara itu, China telah berulang kali membantah tuduhan bahwa pihaknya menggunakan AI secara tidak patut.</span></p>', '', 'Rabu', '2023-10-11', '15:28:31', 'ai.jpg', 1, '', 'Y'),
(718, 19, 'admin', 'Cara Kecerdasan Buatan Ubah Dunia Pendidikan', '', '', 'cara-kecerdasan-buatan-ubah-dunia-pendidikan', 'N', 'Y', 'N', '<p><span style=\"background-color: initial; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium; font-weight: bolder;\">TAGAR.id</span><span style=\"background-color: initial; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;– Alat kecerdasan buatan generatif, seperti ChatGPT, memicu diskusi mengenai transformasi bersejarah di berbagai bidang, termasuk pendidikan dan penelitian akademis.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Bagaimana kecerdasan buatan (AI) generatif, seperti ChatGPT, akan mengubah pendidikan dan penelitian akademis?&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Guru-guru di seluruh&nbsp;</span><a href=\"https://www.tagar.id/tag/dunia\" title=\"dunia\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">dunia</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;membahas tantangan dan&nbsp;</span><a href=\"https://www.tagar.id/tag/manfaat\" title=\"manfaat\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">manfaat</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;yang mungkin diperoleh dari penggunaan AI dalam pekerjaan mereka.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Beberapa pihak melihat sejumlah manfaat dari kemampuan teknologi itu untuk memproses informasi dan data, yang dapat memberikan landasan analisis kritis yang lebih mendalam bagi manusia.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Sedangkan sisanya khawatir para pelajar akan mengandalkan AI untuk mengerjakan tugas dan menyontek.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Saat ditanya apakah pelajar sebaiknya diizinkan menggunakan AI generatif sebelum ada kebijakan lebih lanjut, dosen KTH Royal Institute of Technology Prosun Bhattacharya mengatakan: “Terus terang tidak.”</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\"><br></span><img src=\"http://localhost/himatifuq/asset/images/1696193316070-logo-ai-di-china.jpg\" style=\"width: 662.242px; height: 496.458px;\"><span style=\"font-size: 12px; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular;\"><br></span></p><p><span style=\"font-size: 12px; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular;\">Tanda AI (kecerdasan buatan) terlihat pada Konferensi Kecerdasan Buatan Dunia di Shanghai, China, 6 Juli 2023. (Foto: voaindonesia.com/Reuters)</span></p><p><span style=\"font-size: medium; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular;\">Di Universitas Lund Swedia yang terkemuka, pengajar memutuskan siswa mana yang boleh menggunakan AI untuk membantu mereka mengerjakan tugas.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Kami tidak mau ada larangan. Solusinya, kami mempunyai pendekatan yang bersifat permisif, yaitu Anda boleh menggunakannya (AI, red.) selama Anda yakin bahwa penilaiannya valid. Maksudnya, ia menguji hasil yang memang ingin kami ujikan, dan bahwa hasilnya aman, yang berarti kami tahu siswa itu mengerjakan tugas yang kami nilai. Itu tidak selalu mudah, tapi akan membaik seiring waktu,\" jelas Rachel Forsyth, manajer proyek di Kantor Pengembangan Strategis kampus itu.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Hal serupa juga diberlakukan Universitas Hong Kong. Mereka mengizinkan penggunaan ChatGPT dalam batasan yang ketat.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Diluncurkan perusahaan OpenAI – yang didukung Microsoft – pada November 2022, ChatGPT menjadi aplikasi dengan pertumbuhan tercepat di dunia hingga saat ini.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Alat AI generatif seperti ChatGPT memanfaatkan pola bahasa dan data untuk menghasilkan apa pun, mulai dari esai, video hingga perhitungan matematis yang di permukaan menyerupai hasil buatan manusia.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Organisasi Pendidikan, Ilmu Pengetahuan dan Kebudayaan PBB – UNESCO- belum lama ini meluncurkan pandual global pertama tentang GenAI dalam dunia pendidikan.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Panduan itu menguraikan langkah-langkah yang harus diambil dalam bidang-bidang seperti perlindungan data dan revisi undang-undang hak cipta.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Panduan itu juga mendesak negara-negara untuk memastikan para guru memperoleh keterampilan AI yang diperlukan.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Professor Prosun Bhattacharya di KTH Royal Institute of Technology, Stockholm, mengatakan, mahasiswa tidak sepatutnya diizinkan menggunakan teknologi baru itu sebelum adanya kebijakan yang mengaturnya.</span></p><p><img src=\"http://localhost/himatifuq/asset/images/1696193376661-chatgpt--chatbot-ai.jpg\" style=\"width: 661.608px; height: 496px;\"><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\"><br></span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\">ChatGPT, chatbot AI yang dikembangkan oleh OpenAI, terlihat di situs webnya pada gambar ilustrasi ini. (Foto: voaindonesia.com/REUTERS/Florence Lo)</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\"><br></span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Karena menurut saya, ini akan sangat berdampak pada kemampuan belajar para siswa, karena saat ini ilmu pengetahuan diperoleh dengan membaca buku, membaca artikel riset atau karya lainnya, yang tidak bisa digantikan informasi yang dihasilkan secara artifisial,\" katanya.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Apakah pelajar dapat bergantung pada AI untuk mengerjakan tugas mereka dan mencontek?&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Di seluruh dunia, selama puluhan tahun, perangkat lunak Turnitin menjadi salah satu cara utama untuk memeriksa ada-tidaknya plagiarisme.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">April lalu, perusahaan software itu meluncurkan sebuah alat kecerdasan buatan untuk mendeteksi konten buatan AI.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Turnitin menyediakan alat itu secara gratis kepada lebih dari 10.000 institusi pendidikan di seluruh dunia, meski ia berencana untuk membuatnya berbayar mulai awal 2024.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Sejauh ini, alat pendeteksi AI milik Turnitin itu telah menemukan bahwa hanya 3% pelajar yang menggunakan AI dalam lebih dari 80% tugas mereka.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Beberapa pelajar mengaku jalan yang harus ditempuh masih panjang untuk membuat teknologi AI dapat digunakan selayaknya.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Panduan UNESCO belum lama ini juga memperingatkan risiko perpecahan masyarakat yang semakin dalam akibat alat AI generatif, karena kesuksesan seseorang dalam pendidikan dan perekonomian semakin bergantung pada akses listrik, komputer dan internet, yang tidak dimiliki masyarakat miskin.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Teknologi adalah sebuah alat. Ia sendiri netral, tidak memberikan dampak positif. Tapi cara kita menggunakan teknologilah yang menentukannya. Lalu kita membutuhkan sebuah ekosistem, yang dapat benar-benar kita renungkan kembali, yang dapat benar-benar kita bentuk lagi demi masa depan pendidikan,\" papar Asisten Direktur Jenderal UNESCO bidang pendidikan, Stefania Giannini.&nbsp;</span></p><p style=\"font-size: medium; width: 600px; font-family: SF-Pro-Display-Regular; color: rgb(98, 98, 98); line-height: 24px; margin-left: 175px !important;\"><br></p><p style=\"font-size: medium; width: 600px; font-family: SF-Pro-Display-Regular; color: rgb(98, 98, 98); line-height: 24px; margin-left: 175px !important;\"><br></p><p style=\"font-size: medium; width: 600px; font-family: SF-Pro-Display-Regular; color: rgb(98, 98, 98); line-height: 24px; margin-left: 175px !important;\"><br></p><p style=\"font-size: medium; width: 600px; font-family: SF-Pro-Display-Regular; color: rgb(98, 98, 98); line-height: 24px; margin-left: 175px !important;\"><br></p><p style=\"font-size: medium; width: 600px; font-family: SF-Pro-Display-Regular; color: rgb(98, 98, 98); line-height: 24px; margin-left: 175px !important;\"><br></p><p></p>', '', 'Rabu', '2023-10-11', '15:23:29', 'gpt.jpg', 1, '', 'Y'),
(711, 19, 'admin', 'Menyoal Kebocoran Kredensial Internet Banking dan Antisipasinya ', '', '', 'menyoal-kebocoran-kredensial-internet-banking-dan-antisipasinya-', 'N', 'Y', 'N', '<p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Jakarta - Penjualan data kredensial yang melanda industri perbankan Indonesia di Breachforums beberapa pekan belakangan ini menimbulkan kekhawatiran bagi pengguna layanan perbankan atas keamanan data login layanan perbankan khususnya mobile banking dan internet banking.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Dari bukti dan sampel yang diberikan di forum tersebut, terlihat bahwa memang ada kebocoran kredensial mobile banking dan internet banking dari banyak bank termasuk bank besar.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Hanya saja kredensial yang bocor tersebut tidak bisa digunakan untuk melakukan transaksi pada internet banking karena persetujuan transaksi pada intenret banking membutuhkan Token One Time Password (TOTP) atau Token Password sekali pakai yang sulit disadap, unik untuk setiap rekening dan hanya dimiliki oleh pemegang rekening dan sistem TOTP server bank.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br></p>', '', 'Rabu', '2023-10-11', '09:56:26', 'f9e6074c-de80-45e5-9024-d9626ca9d707_1691.png', 0, '', 'Y'),
(712, 19, 'admin', 'Teknologi Tiongkok Maju Pesat, Sudah Lampui Barat, Sampai Buat Lab untuk Bangkitkan Orang Sudah Meni', '', '', 'teknologi-tiongkok-maju-pesat-sudah-lampui-barat-sampai-buat-lab-untuk-bangkitkan-orang-sudah-meni', 'N', 'Y', 'N', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\"><span style=\"font-weight: 700;\">RADARCIREBON.COM</span> - Teknologi Tiongkok memang maju sangat cepat. Bahkan melampaui negara-negara yang dikenal berteknologi tinggi. Seperti Jerman, Amerika Serikat dan Jepang.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Salah satunya yang membuat teknologi Tiongkok maju sangat cepat, peran para ilmuwan di sana. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Kegigihan para ilmuwan Tiongkok itu seperti diungkap Sara Yosania Putri. Perempuan yang biasa dipanggil Sara ini, memang penyuka dan banyak membaca sejarah tentang Asia Timur; Tiongkok, Jepang dan Korea.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\"><span style=\"font-weight: 700;\">BACA JUGA:<a href=\"https://radarcirebon.disway.id//read/164629/pasukan-g-30-s-pki-yang-dikira-garong-pagi-yang-suram-di-kediaman-di-pandjaitan\" style=\"color: rgb(51, 122, 183);\">Pasukan G 30 S PKI yang Dikira Garong, Pagi yang Suram di Kediaman DI Pandjaitan</a></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Dijelaskan Sara, saking gigihnya, sesuatu yang menurut orang lain tidak mungkin, bagi Tiongkok menjadi mungkin. Ada beberapa contoh teknologi hasil kegigihan memajukan teknologi adalah:</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">1. Buat Lab untuk Bangkitkan Orang Sudah Meninggal </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Karena prinsip kegigihan itu, menurut Sara, Tiongkok mengembangkan teknologi untuk membangkitkan orang yang telah mati. Tiongkok sampai membuat lab khusus untuk tujuan membangkitkan orang mati. <span style=\"letter-spacing: 0.2px; word-spacing: 2.1px;\">Sebuah laboratorium di Tiongkok tengah menggarap proyek pembekuan tubuh manusia. Nantinya akan digunakan untuk membangkitkan kembali orang yang telah meninggal duni</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\"><span style=\"font-weight: 700;\">BACA JUGA:<a href=\"https://radarcirebon.disway.id//read/164627/rsud-dr-slamet-garut-kebakaran-hebat-pelayanan-terganggu-kata-wabup-ruang-cuci-darah-ludes\" style=\"color: rgb(51, 122, 183);\">RSUD dr Slamet Garut Kebakaran Hebat, Pelayanan Terganggu, Kata Wabup: Ruang Cuci Darah Ludes</a></span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">The Shandong Yinfeng Life Science Research adalah penelitian yang pertama dalam bidang ini, dan satu-satunya pusat penelitian krionik di Tiongkok.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Penelitian itu menawarkan layanan seperti penangguhan cryonic. Hal itu memungkinkan tubuh manusia untuk diawetkan pada suhu dingin yang membekukan, dan merevolusi transplantasi organ, dengan bantuan cryonics. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Aaron Drake, Direktur pusat respon klinis Yinfeng menjelaskan, bagaimana jantung manusia hanya memiliki waktu enam jam sebelum mulai mati, setelah kematian pemiliknya. Tetapi dengan cryonics, waktu ini dapat diperpanjang.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 18px; line-height: 1.7em; color: rgb(34, 34, 34); font-family: Heebo, sans-serif; letter-spacing: 0.2px; word-spacing: 2.1px;\">Drake menyoroti cara lain teknologi krionik. Mereka benar-benar dapat membekukan waktu untuk menawarkan pasien perawatan yang diperlukan meskipun ada kendala waktu.</p><div class=\"text-center\" style=\"color: rgb(34, 34, 34); font-family: Heebo, sans-serif; font-size: 14px; letter-spacing: 0.2px; word-spacing: 2.1px;\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><ul class=\"pagination\" style=\"margin: 20px 0px; display: inline-block; border-radius: 4px;\"><li class=\"active\" style=\"display: inline; font-size: 18px; line-height: 1.7em; margin-bottom: 15px;\"></li></ul></div></div>', 'Teknologi Tiongkok kini sudah maju pesat, mengalahkan negara Barat. -Istimewa-radarcirebon.com', 'Rabu', '2023-10-11', '10:19:22', 'weee1.jpg', 0, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(699, 19, 'admin', 'Inovasi AI Ciptakan Desain Robot Berjalan yang Unik, Seperti Ini Bentuknya', '', 'https://youtu.be/WmTCWLO2NB8?feature=shared', 'inovasi-ai-ciptakan-desain-robot-berjalan-yang-unik-seperti-ini-bentuknya', 'Y', 'Y', 'Y', '<p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Jakarta - Saat ini merupakan era dimana banyak pihak yang berlomba-lomba mengembangkan kecerdasan buatan. Terobosan terbaru datang dari Universitas Northwestern yang menciptakan inovasi AI dengan kemampuan merancang robot berjalan yang bisa berfungsi hanya dalam hitungan detik.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Robot tersebut, muncul dari perintah sederhana \"desain alat bantu jalan\", berevolusi dari balok yang tidak bergerak menjadi entitas berkaki tiga yang aneh, berlubang, dan mampu bergerak dengan lambat dan stabil.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Peneliti menilai, rancangan ini bukan hanya inovasi mekanis, tetapi juga merupakan awal dari era baru dalam desain AI yang mampu menciptakan organisme buatan. </span><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Meskipun alam membutuhkan miliaran tahun untuk mengembangkan spesies berjalan pertama, namun, AI ini mampu menciptakan robot yang dapat berjalan hanya dalam hitungan detik.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><b>Berjalan Melintasi Permukaan Datar</b></span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Melansir laman Neuroscience News, tim peneliti Universitas Northwestern, dalam tes awal, bisa memberikan perintah sederhana kepada AI yakni \"Rancang robot yang dapat berjalan melintasi permukaan datar.\"</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Menariknya, inovasi AI ini memiliki kemampuan untuk merancang struktur robot yang sepenuhnya baru dari awal, tanpa bergantung pada data besar atau komputasi berdaya tinggi. Sebaliknya, AI ini dapat berjalan pada komputer pribadi yang ringan.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Para peneliti menganggap hal ini sebagai evolusi yang signifikan dibandingkan sistem AI lain yang sering membutuhkan superkomputer dan kumpulan data besar. Selain itu, AI baru ini juga memiliki kemampuan untuk berinovasi dengan tidak hanya meniru karya manusia di masa lalu.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Kami menemukan algoritma desain berbasis AI yang sangat cepat yang mampu melewati kemacetan evolusi, tanpa bergantung pada bias yang dibuat oleh manusia,\" ucap Sam Kriegman, pemimpin penelitian ini.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Lebih lanjut, Kriegman, menyebut, proses ini disebut sebagai \"evolusi instan\", di mana AI dapat menghasilkan blueprint robot dalam sekejap mata.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><b>Merancang Robot Dalam Hitungan Detik</b></span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Proses pengembangan robot berjalan dari Universitas Northwestern dimulai dengan sebuah balok seukuran sabun. Pada awalnya, balok tersebut tidak dapat berjalan, tetapi AI secara cepat mengulangi desainnya.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Dengan setiap iterasi, AI menilai desainnya, mengidentifikasi kekurangannya, dan memperbarui struktur robot tersebut.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Hasilnya, setelah sembilan kali percobaan, AI menghasilkan robot yang mampu berjalan dengan stabil. Seluruh proses ini hanya memakan waktu 26 detik di laptop.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Sekarang siapapun dapat menyaksikan evolusi saat AI menghasilkan tubuh robot yang semakin baik secara real time,\" kata Kriegman.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Meskipun desainnya unik, ada satu aspek yang membuat robot ini semakin menarik, yaitu lubang-lubang yang tersebar di seluruh tubuh robot.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Ini menarik karena kami tidak memberi tahu AI bahwa robot harus memiliki kaki. Ditemukan kembali bahwa kaki adalah cara yang baik untuk bergerak di darat. Faktanya, gerak kaki merupakan bentuk pergerakan terestrial yang paling efisien,\" kata Kriegman.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><b>Potensi Penerapan di Masa Depan</b></span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Sebelum mencapai pencapaian ini, Kriegman dan timnya terkenal karena mengembangkan xenobot pada awal tahun 2020. Xenobot adalah robot hidup pertama yang terbuat sepenuhnya dari sel biologis.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Namun, AI yang mereka kembangkan sekarang dianggap sebagai kemajuan berikutnya dalam eksplorasi potensi kehidupan buatan.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Sehingga robot ini mungkin terlihat sederhana dan terbuat dari bahan anorganik saat ini, tetapi merupakan langkah pertama menuju era baru alat yang dirancang oleh AI yang dapat bertindak langsung terhadap dunia.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Meskipun robot yang dihasilkan AI saat ini hanya mampu bergerak maju, ada berbagai potensi penerapan di masa depan. Robot serupa mungkin digunakan untuk navigasi di lingkungan berbahaya seperti puing-puing bangunan yang runtuh, atau bahkan sebagai alat diagnostik dalam tubuh manusia.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">AI juga dapat merancang robot nano yang dapat melakukan tugas medis kompleks, seperti membersihkan arteri atau mendeteksi penyakit.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Namun, Kriegman menambahkan keluhannya, \"Satu-satunya hal yang menghalangi kami dalam mendapatkan alat dan terapi baru ini adalah kami tidak tahu bagaimana merancangnya.\"</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br></p>', '', 'Selasa', '2023-10-10', '13:43:34', 'qVHG2hc40M11.jpg', 0, '', 'Y'),
(697, 19, 'admin', 'Teknologi AI Mengintai, Industri Siap Beradaptasi?', '', 'https://youtu.be/PZaW58FgCkc?feature=shared', 'teknologi-ai-mengintai-industri-siap-beradaptasi', 'N', 'N', 'N', '<p><br></p><div class=\"content_video\" style=\"width: 714px; height: 425px; font-family: Arial, Helvetica, Tahoma;\"><div class=\"flyleft detail-video\" style=\"color: rgb(255, 255, 255); position: relative; overflow: visible;\"><div class=\"vid\" style=\"position: relative; margin: 0px 0px 20px; width: 714px; float: left;\"><span class=\"box_img ratiobox ratio_16_9\" style=\"width: 714px; float: left; display: inline-block; position: relative; transition: all 200ms linear 0s;\"><span class=\"ratiobox_content\" style=\"position: absolute; inset: 0px; overflow: hidden; background: rgb(0, 0, 0);\"><br></span></span></div></div></div><div class=\"fixtrigg\" style=\"font-family: Arial, Helvetica, Tahoma;\"></div><div class=\"jdl__\" style=\"font-family: Arial, Helvetica, Tahoma; height: auto;\"><div class=\"jdl\" style=\"transition: all 0.2s ease 0s; position: static;\"><div class=\"container\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; width: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: unset;\"><div class=\"detail_box\"><div class=\"author\" style=\"font-size: 14px; color: rgb(151, 151, 151); margin-bottom: 10px; font-weight: 700;\"><span class=\"label\" style=\"color: rgb(41, 93, 151); text-transform: uppercase;\">TECH - </span>CNBC Indonesia TV, CNBC Indonesia</div><div class=\"date\" style=\"font-size: 12px; color: rgb(151, 151, 151);\">30 September 2023 10:00</div></div><div class=\"clearfix\"></div></div></div></div><div class=\"fixtrigger\" style=\"font-family: Arial, Helvetica, Tahoma;\"></div><div data-sticky_parent=\"\" style=\"font-family: Arial, Helvetica, Tahoma;\"><div class=\"detail_text\" style=\"flex: 1 0 0px; font-size: 17px; line-height: 28px;\"><p style=\"margin-bottom: 20px; display: inline; text-align: justify;\"><strong style=\"font-weight: bold;\">Jakarta, CNBC Indonesia - </strong>Artificial Intellegence kini bukanlah hal baru. Berbagai sektor pun sudah disasar dengan kecerdasan buatan tersebut. Namun sayangnya belum semua pihak siap menghadapi era disrupsi digital. Ada yang merasa terbantu/ namun ada juga yang merasa terancam. Salah satu hal yang disebut mengancam ialah eksistensi Chatgpt. Produk kecerdasan buatan besutan Open-AI yang memiliki kelebihan mampu menciptakan teks otomatis dengan gaya layaknya manusia tidak kaku dan terbilang Instant.</p></div></div>', '', 'Selasa', '2023-10-10', '13:08:46', 'Gambar_WhatsApp_2023-10-01_pukul_14_39_26_321942cf1.jpg', 1, '', 'Y'),
(721, 19, 'admin', ' Pilot Robot atau PIBOT dengan Teknologi Kecerdasan Buatan', '', '', '-pilot-robot-atau-pibot-dengan-teknologi-kecerdasan-buatan', 'Y', 'Y', 'Y', '<p>&nbsp;<span style=\"background-color: initial; color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Sebuah tim peneliti Korea Selatan telah mengembangkan pilot robot humanoid canggih yang disebut PIBOT, yang dapat memahami pedoman penerbangan dan mengoperasikan seluruh proses penerbangan dengan menggunakan teknologi kecerdasan buatan (AI – artificial intelligence).&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Tim peneliti yang dipimpin oleh dosen teknik elektro di Korea Advanced Institute of Science and Technology (KAIST), David Hyunchul Shim, mengatakan PIBOT adalah pilot humanoid pertama di dunia yang berbasis pada teknologi Large Language Model (LLM), yang memungkinkan robot memahami panduan penerbangan yang ditulis dalam bahasa&nbsp;</span><a href=\"https://www.tagar.id/tag/manusia\" title=\"manusia\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">manusia</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">.</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Autopilot konvensional hanya bisa mengontrol kecepatan, ketinggian, atau arah, tapi pilot&nbsp;</span><a href=\"https://www.tagar.id/tag/robot\" title=\"robot\" style=\"font-family: SF-Pro-Display-Regular; font-size: medium; background-color: rgb(255, 255, 255); color: inherit; border-bottom: 2px solid rgb(207, 0, 1); background-image: linear-gradient(120deg, rgb(255, 240, 238) 0%, rgb(255, 240, 238) 100%); background-repeat: no-repeat; background-size: 100% 0px; background-position: 0px 100%; transition: background-size 0.125s ease-in 0s;\">robot</a><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">&nbsp;kami, PIBOT, bisa menangani semua yang ada di pesawat termasuk menghidupkan dan mematikan mesin dan menerbangkan pesawat, lepas landas dan mendarat, semuanya,\" ujar Shim.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Dalam situasi darurat, PIBOT dapat merespons dengan cepat tanpa panik dan mencari rute aman, karena dapat segera mengingat manual pengoperasian pesawat dan prosedur Quick Referrence Handbook (QRH), dengan menggunakan teknologi ChatGPT.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Untuk pengoperasian yang presisi, PIBOT memiliki kamera di bagian muka, lengan, dan bagian depan tubuhnya untuk membantu mengidentifikasi dan memanipulasi berbagai sakelar dengan lengan robotik di lingkungan ydi dalam dan luar pesawat.</span></p><p><img src=\"http://localhost/himatifuq/asset/images/1694031268427-simulator-boeing-787-dreamliner.jpg\" style=\"width: 799.688px; height: 599.766px;\"><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\"><br></span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\">Simulator dek penerbangan Boeing 787 Dreamliner Engineering di Seattle, Washington, DC, AS. (Foto: voaindonesia.com/Reuters)</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: 12px;\"><br></span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Robot ini juga dapat menghafal seluruh peta navigasi Jeppesen, hal yang mustahil dilakukan oleh pilot manusia. Peta navigasi Jeppesen adalah peta topogorafi yang menjadi alat bantu navigasi pesawat atau kapal laut.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">“Pilot manusia memang hebat dan memahami konteks serta menangani situasi yang kompleks, namun mereka sering kali gagal mengingat secara detil panduan penerbangan, terutama ketika mereka sedang menghadapi masalah. PIBOT mampu memahami dan mengingat secara harfiah semua yang ada dalam panduan, dan kemudian mereka dapat menjalankannya tanpa emosi apa pun. Artinya tidak ada kepanikan dalam situasi darurat. Mereka dapat menangani situasi tersebut sesuai dengan panduan dalam hitungan mikrodetik,\" papar Shim.</span></p><p><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\"><br></span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Tim peneliti sejauh ini sudah menguji PIBOT dalam simulator penerbangan. PIBOT terbukti mampu melakukan seluruh proses penerbangan, mulai dari menyalakan mesin, melaju di landasan pacu, lepas landas, terbang, dan mendarat. Tim tersebut berencana menguji PIBOT pada pesawat ringan sungguhan dalam beberapa tahun lagi.&nbsp;</span><span style=\"color: rgb(98, 98, 98); font-family: SF-Pro-Display-Regular; font-size: medium;\">Shim menambahkan bahwa PIBOT-- dengan tinggi sekitar 160 sentimeter dan berat 65 kilogram -- berukuran seperti manusia, Robot ini berpotensi ditempatkan tidak hanya di pesawat terbang, tetapi juga di berbagai kendaraan termasuk mobil, tank, ekskavator, dan kapal selam.</span></p>', '', 'Rabu', '2023-10-11', '15:30:44', '1694031091609-pibot1.jpg', 2, '', 'Y'),
(723, 19, 'admin', 'Alibaba DAMO Prediksi 10 Tren Teknologi 2023, Generative AI Disorot', '', '', 'alibaba-damo-prediksi-10-tren-teknologi-2023-generative-ai-disorot', 'Y', 'N', 'N', '<p><a href=\"https://infokomputer.grid.id/tag/alibaba-damo-academy\" style=\"font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255); font-size: 1rem; vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">Alibaba DAMO Academy</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 1rem;\">&nbsp;(“DAMO”) membagikan 10 prediksi terkait tren teknologi terdepan yang akan membentuk industri di tahun 2023.&nbsp;</span><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Salah satu yang disoroti oleh inisiatif penelitian global dari Alibaba Group ini adalah&nbsp;<a href=\"https://infokomputer.grid.id/tag/generative-artificial-intelligence\" style=\"vertical-align: top; color: rgb(210, 35, 42); outline: 0px; transition: color 0.2s ease-in-out 0s; display: inline-block;\">Generative Artificial Intelligence</a>&nbsp;(AI Generatif). Penerapan artificial intelligence generatif ini diharapkan dapat terus berkembang, terutama dalam mengubah proses produksi konten digital.&nbsp;&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Dengan kemajuan teknologi di masa depan dan pengurangan biaya, AI Generatif akan menjadi teknologi inklusif yang secara signifikan dapat meningkatkan variasi, kreativitas, dan efisiensi pembuatan konten, menurut DAMO.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Teknologi penting lainnya yang diperkirakan akan muncul adalah dual-engine decision intelligence (kecerdasan keputusan bermesin ganda). Didukung oleh optimalisasi operasi dan machine learning, sistem kecerdasan ini memungkinkan alokasi sumber daya yang dinamis, komprehensif, dan real-time, seperti pengiriman listrik secara real-time, optimalisasi throughput pelabuhan, penugasan stan bandara, dan peningkatan dalam proses manufaktur. Kemampuan ini disebut DAMOi dapat membantu bisnis meningkatkan efisiensi operasional.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Sementara itu, komputasi dan keamanan cloud diperkirakan akan terus memainkan peran kunci dalam transformasi digital bisnis. Berkat teknologi keamanan dan komputasi cloud yang menjadi lebih terintegrasi daripada sebelumnya, layanan keamanan bisa beralih ke cloud native, berorientasi platform, dan cerdas.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Tren lain yang berkembang menurut prediksi DAMO adalah pre-trained multimodal foundation model, chiplet, pemrosesan dalam memori (in-memory processing), arsitektur komputasi awan terintegrasi perangkat keras-perangkat lunak (hardware-software integrated cloud computing architecture), struktur yang dapat diprediksi berdasarkan sinergi edge-cloud (predictable fabric), pencitraan komputasi (computational imaging), serta perencanaan tata kota virtual skala besar (Urban Digital Twins).</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Tren teknologi teratas di tahun 2023 diformulasikan DAMO melalui analisis makalah publik dan pengajuan paten selama tiga tahun terakhir, serta wawancara dengan hampir 100 ilmuwan, pengusaha, dan insinyur di seluruh dunia.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">“Melihat ke tahun 2023, kemajuan berbagai teknologi akan mendorong desain perangkat lunak/perangkat keras serta integrasi teknologi komputasi dan komunikasi. Penerapan teknologi secara luas akan memfasilitasi peluncuran AI dan teknologi digital lainnya di pasar vertikal dan mendorong kolaborasi sektor publik dan swasta serta individu dalam teknologi keamanan dan manajemen keamanan. Inovasi yang didorong oleh kemajuan teknologi dan aplikasi khusus industri mereka telah menjadi tren yang tidak dapat diubah,” kata Jeff Zhang, Head of Alibaba DAMO Academy.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Inilah 10 teknologi yang diprediksi Alibaba DAMO akan mengalami kemajuan dan melonjak penerapannya pada tahun 2023 ini dan seterusnya:</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">1. AI Generatif/Generative AI</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">AI generatif menghasilkan konten baru berdasarkan kumpulan teks, gambar, atau file audio tertentu. Saat ini, AI Generatif sebagian besar digunakan untuk menghasilkan purwarupa dan draft yang diterapkan dalam beberapa skenario, seperti permainan, iklan, maupun desain grafis. Seiring dengan kemajuan teknologi di masa depan dan pengurangan biaya, AI Generatif akan menjadi teknologi inklusif yang dapat meningkatkan variasi, kreativitas, dan efisiensi pembuatan konten secara signifikan.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Dalam tiga tahun ke depan, DAMO memperkirakan kemunculan model bisnis dan ekosistem yang lebih matang karena AI Generatif dipasarkan secara luas. Model AI generatif akan lebih interaktif, aman, dan cerdas, membantu manusia menyelesaikan berbagai pekerjaan kreatif.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">2. Dual engine decision intelligence</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Sebelumnya, metode pengambilan keputusan tradisional didasarkan pada Riset Operasi atau Operations Research. Namun di tengah dunia yang kian kompleks, kemampuan metode ini menjadi terbatas, terutama dalam menangani masalah yang mengandung ketidakpastian besar. Responsnya pun terbilang lambat terhadap masalah berskala besar.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Oleh karena itu, dunia akademis dan industripun mulai memasukkan machine learning dalam optimalisasi keputusan. Kedua mesin tersebut saling melengkapi, dan bila digunakan secara bersamaan, dapat meningkatkan kecepatan serta kualitas pengambilan keputusan.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Di masa mendatang, teknologi ini diharapkan dapat digunakan secara luas dalam berbagai skenario untuk mendukung alokasi sumber daya yang dinamis, komprehensif, dan real-time, seperti pengalokasian listrik secara real-time, optimalisasi lalu lintas pelabuhan, penentuan apron pesawat atau aircraft stand, dan peningkatan proses manufaktur.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Di masa depan, kecerdasan untuk pengambilan keputusan ini diprediksi DAMO akan diterapkan di lebih banyak skenario.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">3. Keamanan cloud-native</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-size: 1rem;\">Keamanan cloud-native diimplementasikan tidak hanya untuk mendapatkan keamanan yang bersifat native pada infrastruktur cloud, tetapi juga akan meningkatkan layanan keamanan dengan memanfaatkan teknologi cloud-native.&nbsp;</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Walhasil, teknologi keamanan dan komputasi awan menjadi semakin terintegrasi. Kita telah menyaksikan teknologi terapan berkembang dari containerized deployment ke layanan mikro menuju ke model serverless. Dan layanan keamanan pun beralih menjadi layanan yang bersifat native, lebih detail, berorientasi platform, dan cerdas.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Dalam tiga hingga lima tahun ke depan, DAMO meramalkan keamanan cloud-native akan menjadi lebih serbaguna dan lebih mudah beradaptasi dengan arsitektur multicloud. Dengan demikian akan menjadi lebih kondusif untuk membangun sistem keamanan yang dinamis, end-to-end, presisi, dan dapat diterapkan pada lingkungan hibrid.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">4. Model pre-trained multimodal foundation</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Model&nbsp;fondasi multimodal pre-trained telah menjadi paradigma dan infrastruktur baru untuk membangun sistem artificial intelligence. Sistem AI tengah berevolusi dari sistem mono-modal yang fokus pada teks, percakapan, atau visual, menuju sistem yang bersifat general-purpose. Dan pada inti dari sistem general purpose ini adalah multimodality.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">DAMO memprediksi, di masa depan, model-model fondasi ini akan menjadi infrastruktur dasar bagi sistem AI untuk gambar, teks, dan audio, dan akan memberdayakan sistem AI dengan kemampuan cognitive intelligence untuk bernalar, menjawab pertanyaan, meringkas, dan menciptakan.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><br></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">5. Arsitektur cloud computing dengan hardware software terintegrasi</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Cloud computing berkembang menuju arsitektur baru yang berpusat di sekitar Cloud Infrastructure Processor (CIPU). Arsitektur software-defined dan hardware-accelerated ini akan membantu mengakselerasi aplikasi cloud dengan tetap menjaga elastisitas dan agility yang tinggi untuk pengembangan aplikasi cloud.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">CIPU akan menjadi standar de facto layanan cloud computing generasi mendatang dan menciptakan peluang pengembangan baru untuk R&amp;D perangkat lunak inti dan desain chip khusus.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">6. Predictable fabric</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Predictable fabric adalah sistem jaringan host-network co-design yang berkembang dengan dorongan kemajuan dalam cloud computing, dan memiliki tujuan “menawarkan layanan jaringan berkinerja tinggi.”</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Predictable fabric, disebut DAMO, sebagai tren yang tak terelakkan karena kemampuan komputasi dan jaringan saat ini secara bertahap akan bertemu. Dan tren ini mendatangkan manfaat baik di sisi cloud provider maupun konsumen cloud.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Perkembangan di bidang ini juga mendorong adopsi predictable fabric di jaringan data center ke jaringan wide-area cloud backbone.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">7. Computational imaging</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Computational imaging adalah teknologi antardisiplin yang tengah berkembang dan memiliki kemampuan mengumpulkan dan memroses informasi optis dengan berbagai dimensi yang tidak dapat dideteksi oleh mata manusia, seperti sudut sinar dan polarisasi.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Berbeda dengan teknik pencitraan tradisional, computational imaging memanfaatkan model matematika dan kemampuan pemrosesan sinyal sehingga teknik ini dapat melakukan analisis mendalam terhadap informasi light field. DAMO menyebut hal ini belum pernah ada sebelumnya.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Teknologi ini sudah digunakan dalam skala besar pada fotografi ponsel, bidang kesehatan, dan autonomous drivnig. Kedepannya, computational imaging akan terus merevolusi teknologi pencitraan tradisional dan memunculkan aplikasi inovatif serta imajinatif seperti pencitraan tanpa lensa, dan pencitraan Non-line-of-sight (NLOS).</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">8. Chiplet</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Desain berbasis chiplet berfokus pada tiga proses inti: deconstruction, reconstruction, dan reuse. Metode ini memungkinkan para pabrikan memecah System on a Chip (SoC) menjadi beberapa chiplet, membuat chiplet secara terpisah dengan pemrosesan yang berbeda, dan mengintegrasikannya ke dalam SoC melalui interkoneksi dan pengemasan. Dengan cara ini, biaya dapat dipangkas dan memungkinkan sebuah format baru penggunaan ulang hak cipta.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Didukung oleh teknologi pengemasan yang canggih, chiplet dapat membawa perubahan baru dalam proses R&amp;D integrated circuit, mulai dari electronic design automation (EDA), desain, dan manufaktur sampai ke pengemasan dan testing. Menurut DAMO, perkembangan di area ini akan membentuk ulang industri chip.</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">9. Pemrosesan dalam memori (Processing in Memory/PIM)</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Teknologi Processing in Memory (PIM) adalah integrasi CPU dan memori dalam satu chip, yang memungkinkan data diproses secara langsung pada memori. Di masa mendatang, chip PIM diproyeksikan akan digunakan dalam aplikasi yang lebih canggih, seperti inferensi berbasis cloud. Tren ini akan menggeser arsitektur computing-centric tradisional menjadi arsitektur yang data-centric, yang akan berdampak positif pada industri seperti komputasi awan, AI, dan Internet of Things (IoT).</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: 700;\">10. Urban Digital Twins berskala besar</span></p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Konsep urban digital twins sendiri telah menjadi sebuah pendekatan baru untuk menyempurnakan tata kelola kota. Dan belakangan, ada sejumlah terobosan di bidang ini. Beberapa teknologi ditingkatkan sehingga memungkinkan penerapan urban digital twin dalam skala besar, seperti dynamic perceptual mapping berskala besar yang dapat menekan biaya modeling, atau online real-time rendering berskala besar yang mengurang response time.&nbsp;</p><p style=\"color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif;\">Sejauh ini, urban digital twins berskala besar telah membuat kemajuan besar dalam berbagai skenario, seperti tata kelola lalu lintas, pencegahan dan pengelolaan bencana alam. Di masa, DAMO memprediksi, urban digital twins berskala besar akan menjadi lebih autonomous dan multidimensi.</p>', '', 'Rabu', '2023-10-11', '16:06:19', 'tknologi.jpg', 3, '', 'Y'),
(724, 19, 'admin', 'Ekonomi Digital RI Diprediksi Moncer di 2023, Telkom Dinilai Jadi Penggeraknya', '', '', 'ekonomi-digital-ri-diprediksi-moncer-di-2023-telkom-dinilai-jadi-penggeraknya', 'N', 'N', 'N', '<p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Jakarta - Seiring dengan pandemi yang semakin membaik, ekonomi digital Indonesia diprediksikan akan moncer pada 2023 ini. Penyedia aplikasi digital akan jadi salah motor penggerak ekonomi digital RI tersebut.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Merujuk pada data Google yang bekerjasama dengan Temasek, dan Bain & Company dalam laporan bertajuk \"e-Conomy SEA 2022\" disebutkan bahwa ekonomi digital Indonesia diperkirakan mencapai USD 77 miliar pada 2022. </span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Angka ini, tulis laporan tersebut, meningkat 22% dari tahun sebelumnya serta naik 19,8% dari tahun 2020 (sebesar USD 44 miliar). Kontribusi terbesar berasal dari penjualan kotor barang dan jasa dari sektor e-commerce dengan nilai estimasi USD 59 miliar. Kemudian disusul jasa transportasi dan pesan-antar makanan, pemesanan tiket perjalanan, serta media online</span></p><p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br></span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Laporan Google Cs itu memproyeksikan ekonomi digital Indonesia akan terus tumbuh dan tetap menjadi yang terbesar di Asia Tenggara sampai 2030. Namun, ada sejumlah tantangan ekonomi makro yang berpotensi membebani prospek pertumbuhan ini.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Dalam laporan yang sama juga menyebutkan kalau ekonomi digital Indonesia masih jadi yang terbesar di Asia Tenggara untuk tahun ini dan puncaknya pada tahun 2024. Melihat kondisi tersebut Telkom telah menyiapkan diri sedemikian rupa. Melalui umbrella brand, Leap, sepanjang tahun 2022 telah agresif pada sektor tersebut dengan kehadiran PaDI UMKM di bidang ekosistem e-Commerce serta Logee untuk jasa transportasi.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Langkah tersebut dinilai para pengamat ekonomi digital di tanah air, sudah pada jalur yang benar. Nur Islami Javad, Chief of DEF (Digital Startup, E-Commerce & Fintech) Lembaga Riset Telematika Sharing Vision mengatakan, akselerasi nyata dirasakannya bila melihat kinerja Leap Telkom sepanjang tahun lalu.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Apabila mayoritas startup perlu dua tahun untuk akselerasi tembus pasar dengan growth hacking yang signifikan, saya menilai Direktur Digital Telkom dan jajarannya sudah bisa persingkat itu menjadi kurang dari dua tahun,\" ujarnya seperti dalam keteragannnya.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Menurut Jeff, sapaannya, growth hacking semacam itu wajar terjadi karena perusahaan plat merah ini tak terkendala modal kerja. Di sisi lain, strategi khas startup dengan membentuk Tribe Leader secara remote juga dilakukan oleh Telkom Leap.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><img src=\"http://localhost/himatifuq/asset/images/telkom_169.png\" style=\"width: 509.487px; height: 286.792px;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Logee Telkom Foto: Telkom</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Setahu saya ada ratusan kawan-kawan penggiat startup Bandung yang direkrut untuk mendukung Leap, mereka direkrut memperkuat tim digital Telkom dengan posisi tetap di Bandung. Ada yang jadi programmer, agile scrum, product manager, macam-macam itu,\" ujar Vice President Startup Bandung ini.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Kolaborasi juga terbuka kepada akademisi yang memiliki keahlian terkait seperti kecerdasan buatan dan big data. Pola kerjanya adalah koordinasi via layanan video conference dan sesekali rapat koordinasi secara luring. Strategi aneka kolaborasi yang serba digital ini membuat Leap, produk digital Telkom, bisa cepat menyatu dalam platform ekosistem digital.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Sebagai sebuah produk, Leap cepat jadi walau untuk jadi mesin duit tentu perlu waktu. Jangankan produk digital, produk konvensional pun tidak bisa langsung cetak banyak keuntungan, ada proses yang harus dilewati dulu,\" ujar pria alumni Magister STBM ITB tersebut.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Danrivanto Budhijanto, pakar hukum teknologi informasi dari Unpad menyatakan, Leap sebagai produk digital Telkom sudah sesuai. Sebab, selain sesuai tren global operator telekomunikasi, pihaknya juga melihat ada spirit kehadiran BUMN sebagai agen pembangunan negeri.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Baca juga:</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">IndiHome Siap Dongkrak Kecepatan Internet Fixed Broadband Indonesia</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Nuansa kehadirannya menjadi agent of change dirasakan. Terutama dalam memperluas prinsip keadilan sosial bagi seluruh rakyat, itu sudah dan terus dilakukan layanan digital Telkom,\" ungkapnya.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Menurut dia, sebagai Badan Usaha Milik Negara (BUMN), layanan inti yang memudahkan masyarakat Indonesia, wajib terus diberikan. Akan tetapi, inovasi layanan berupa produk digital harus simultan dilakukan sekalipun kompetisinya tidak mudah.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">\"Inovasi ini adalah mandatori ke badan usaha milik negara, yang dilakukan tak semata-mata agar mampu memberi profit perusahaan dan dividen negara, juga untuk terus menjaga daya saing BUMN,\" pungkas Staf Khusus Menkominfo 2014-2019 tersebut.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br></p>', '', 'Rabu', '2023-10-11', '16:15:52', 'transformasi-digital-dorong-pengembangan-ekonomi-berbasis-inovasi_169.png', 0, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(725, 19, 'admin', 'Kemdikbudristek Dorong Guru Manfaatkan Teknologi saat Mengajar', '', '', 'kemdikbudristek-dorong-guru-manfaatkan-teknologi-saat-mengajar', 'N', 'N', 'N', '<p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">Jakarta, Jurnas.com - Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi (<a href=\"https://www.jurnas.com/tags/Kemdikbudristek/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">Kemdikbudristek</a>) mendorong guru memanfaatkan teknologi dalam kegiatan belajar mengajar.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">Hal itu disampaikan Sekretaris Jenderal <a href=\"https://www.jurnas.com/tags/Kemdikbudristek/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">Kemdikbudristek</a>, <a href=\"https://www.jurnas.com/tags/Suharti/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">Suharti</a>, saat membuka Program Pembelajaran berbasis Teknologi Informasi dan Komunikasi/TIK (<a href=\"https://www.jurnas.com/tags/PembaTIK%202023/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">PembaTIK 2023</a>), yang digelar Pusat Data dan Teknologi Informasi (Pusdatin).</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\"><span style=\"background-color: initial;\">Program yang telah dimulai sejak Juli 2023, saat ini telah memasuki tahap akhir, yaitu level empat. Di babak ini, 30 peserta terbaik dari 38 provinsi di Indonesia akan mengikuti tahap berbagi dan berkolaborasi.</span></p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">\"Dengan adanya kompetensi berbagi, <a href=\"https://www.jurnas.com/tags/Kemdikbudristek/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">Kemdikbudristek</a> mendorong guru tidak hanya mampu menerapkan pemanfaatan teknologi dalam kegiatan belajar dan mengajar, tetapi juga dalam karya inovasi dalam pembelajaran,\" kata <a href=\"https://www.jurnas.com/tags/Suharti/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">Suharti</a>.</p><div id=\"div-gpt-ad-1569815055327-0\" style=\"margin: 0px 0px 24px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12px; font-family: Roboto, san-serif;\"></div><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\"><a href=\"https://www.jurnas.com/tags/Suharti/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">Suharti</a> menambahkan, program PembaTIK diharapkan dapat menjadi pemantik untuk meningkatkan pemerataan kualitas pendidikan di Indonesia.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">\"PembaTIK level 4 dapat menjadi wadah berbagi wawasan, dan bertukar ilmu pengetahuan antarguru. Manfaatkan dengan baik, jangan kendorkan semangat hingga tuntas mengikuti program <a href=\"https://www.jurnas.com/tags/PembaTIK%202023/\" style=\"color: red; cursor: pointer; outline: 0px; font-weight: bold;\">PembaTIK 2023</a>,\" ujar dia.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">Kepala Pusdatin, Muhamad Hasan Chabibie, menjelaskan pelaksanaan PembaTIK ini diselenggarakan berjenjang empat level, yaitu level 1-Literasi TIK, level 2-Implementasi TIK, level 3-Kreasi TIK, dan level 4-Berbagi dan Berkolaborasi.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">PembaTIK level 1-Literasi TIK telah diikuti sebanyak 79.919 peserta dari jenjang PAUD, SD, SMP, SMA, SMK, SLB dan Sekolah Luar Negeri di seluruh Indonesia yang berlangsung secara daring pada Juli 2023.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">Berikutnya, PembaTIK level 2-Implementasi TIK diselenggarakan pada Agustus dan diikuti sebanyak 33.923 peserta. PembaTIK level 3-Kreasi TIK diikuti oleh 13.931 peserta. Untuk PembaTIK level 4-Berbagi dan Berkolaborasi, peserta yang lolos sebanyak 1.066 orang.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">Dari jumlah tersebut akan diseleksi kembali hingga mendapatkan satu peserta terbaik dari setiap provinsi di Indonesia untuk menjadi Duta Teknologi 2023.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">\"Tingkat Berbagi dan Berkolaborasi dari PembaTIK memberikan kesempatan kepada para peserta untuk berbagi pengalaman, pengetahuan, dan praktik terbaik dalam memanfaatkan TIK untuk pendidikan. Mereka didorong untuk saling belajar dari keahlian masing-masing dan menumbuhkan inovasi dalam metode pengajaran dan pembelajaran berbasis teknologi,\" ujar Hasan.</p><p style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.5; font-family: Roboto, san-serif;\">Para peserta PembaTIK yang lolos berkesempatan mengikuti sesi bersama narasumber yang berkecimpung di dunia TIK, seperti Lenang Manggala yang meraih penghargaan Innovation Heroes dan Uwes Anis Chaeruman.</p><div id=\"ats-insert_ads-7-wrapper\" class=\"insert_ads insert_ads-10 show_advertisement unrendered\" style=\"margin: 0px 0px 24px; padding: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12px; text-align: center; height: 1px; font-family: Roboto, san-serif;\"></div>', '', 'Rabu', '2023-10-11', '16:26:17', 'guru.png', 1, '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 13),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(280, 56, 'admin', 'Galeri', 'galeri', '<p><img src=\"http://localhost/himatifuq/asset/images/launching2.jpg\" style=\"width: 611.375px; height: 326.015px;\"><br></p><p><img src=\"http://localhost/himatifuq/asset/images/launching1.jpg\" style=\"width: 612.588px; height: 321.042px;\"><br></p>', 'LAUNCHING1.jpg'),
(281, 57, 'admin', 'Galeri', 'galeri', '<p><br></p><p></p><p><br></p>', 'PELEPASAN.jpg'),
(282, 58, 'admin', 'Galeri', 'galeri', '<p><br></p>', 'kunjungan_mitra_2_foto.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(66, 'Great UI & UX', 'great-ui--ux', '<p>Modi nostrum vel laborum. Porro fugit error sit minus sapiente sit aspernatur</p>', '2020-09-22', 'feature_3.jpg', 'admin', 4, '02:33:04', 'Selasa'),
(62, 'Welcome to Code Crafters', 'welcome-to-code-crafters', '<br>', '2020-09-22', 'home_nyar.png', 'admin', 3, '02:17:27', 'Selasa'),
(63, 'Welcome to Code Crafters', 'welcome-to-code-crafters', '<br>', '2020-09-22', 'lobyy5.jpg', 'admin', 6, '02:19:43', 'Selasa'),
(64, 'Sejarah Berdirinya Perusahaan Code Crafters', 'sejarah-berdirinya-perusahaan-code-crafters', '<p><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">Code Crafters didirkan pada tanggal 02 September 2023 pada saat kegiatan Wirausaha Merdeka yang<span style=\"letter-spacing: 0.05pt;\">&nbsp;</span></span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">diselenggarakan oleh PPNS (Politeknik Perkapalan Negeri Surabaya). Perusahaan ini didirikan dengan tujuan&nbsp;</span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"font-size: 12pt; text-align: justify; line-height: 24px;\">sebagai<span style=\"letter-spacing: 0.05pt;\">&nbsp;</span>platform<span style=\"letter-spacing: 1.2pt;\">&nbsp;</span>bisnis,<span style=\"letter-spacing: 1.2pt;\">&nbsp;</span>bergerak<span style=\"letter-spacing: 1.2pt;\">&nbsp;</span>dibidang<span style=\"letter-spacing: 1.4pt;\">&nbsp;</span>jasa<span style=\"letter-spacing: 1.5pt;\">&nbsp;</span>Pengembangan<span style=\"letter-spacing: 1.45pt;\">&nbsp;</span>Perangkat<span style=\"letter-spacing: 1.4pt;\">&nbsp;</span>Lunak<span style=\"letter-spacing: 1.45pt;\">&nbsp;</span>yang<span style=\"letter-spacing: 1.4pt;\">&nbsp;</span>didirikan<span style=\"letter-spacing: 1.4pt;\">&nbsp;</span>oleh<span style=\"letter-spacing: 1.45pt;\">&nbsp;</span>10<span style=\"letter-spacing: 1.4pt;\">&nbsp;</span>Rekan.<span style=\"letter-spacing: 1.45pt;\">&nbsp;</span>Salah<span style=\"letter-spacing: 1.4pt;\">&nbsp;</span>satu<span style=\"letter-spacing: 0.05pt;\">&nbsp;</span></span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"font-size: 12pt; text-align: justify; line-height: 24px;\">fitur<span style=\"letter-spacing: 0.45pt;\">&nbsp;</span>yang<span style=\"letter-spacing: 0.5pt;\">&nbsp;</span>dikembangkan<span style=\"letter-spacing: 0.45pt;\">&nbsp;</span>oleh<span style=\"letter-spacing: 0.5pt;\">&nbsp;</span>perusahaan<span style=\"letter-spacing: 0.45pt;\">&nbsp;</span>ini<span style=\"letter-spacing: 0.5pt;\">&nbsp;</span>adalah<span style=\"letter-spacing: 0.5pt;\">&nbsp;</span>Ruang<span style=\"letter-spacing: 0.5pt;\">&nbsp;</span>Tanya<span style=\"letter-spacing: 0.55pt;\">&nbsp;</span>yang<span style=\"letter-spacing: 0.45pt;\">&nbsp;</span>di rilis<span style=\"letter-spacing: 0.5pt;\">&nbsp;</span>pada<span style=\"letter-spacing: 0.45pt;\">&nbsp;tanggal&nbsp;</span></span></p><p><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">Ruang Tanya merupakan sebuah sistem informasi berbasis Artificial Intelligence (AI) atau kecerdasan buatan<span style=\"letter-spacing: 0.05pt;\">&nbsp;</span>yang dapat merepresentasikan percakapan pelanggan melalui perintah pesan atau obrolan berbasis boot, seperti<span style=\"letter-spacing: 0.05pt;\">&nbsp;</span></span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">customer<span style=\"letter-spacing: 0.9pt;\">&nbsp;</span>service<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>boot.<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>Aplikasi<span style=\"letter-spacing: 0.8pt;\">&nbsp;</span>ini<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>mempermudah<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>pelanggan<span style=\"letter-spacing: 0.8pt;\">&nbsp;</span>untuk<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>mengetahui</span><span century=\"\" gothic\",=\"\" sans-serif;=\"\" letter-spacing:=\"\" 1.55pt;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">&nbsp;</span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">informasi<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>secara<span style=\"letter-spacing: 0.75pt;\">&nbsp;</span>menyeluruh</span><span century=\"\" gothic\",=\"\" sans-serif;=\"\" letter-spacing:=\"\" 1.55pt;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">&nbsp;</span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">dalam<span style=\"letter-spacing: 0.05pt;\">&nbsp;suatu</span></span><span century=\"\" gothic\",=\"\" sans-serif;=\"\" letter-spacing:=\"\" 0.75pt;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">&nbsp;</span><span century=\"\" gothic\",=\"\" sans-serif;\"=\"\" style=\"text-align: justify; font-size: 12pt; line-height: 24px;\">instansi/pendidikan.</span></p>', '2020-09-22', 'CC1.jpg', 'admin', 20, '02:26:57', 'Selasa'),
(65, 'Ontime Delivery', 'ontime-delivery', '<p>Excepteur sint occaecat cupidatat non proident, sunt in\r\n              culpa qui officia deserunt mollit anim id est laborum</p>', '2020-09-22', 'feature_2.jpg', 'admin', 3, '02:30:30', 'Selasa'),
(52, 'booting and memory', 'booting-and-memory', '<p>download surat pendaftaran <a href=\"https://himatif.uqgresik.ac.id/\" target=\"_blank\">di sini</a><br></p>', '2020-09-18', '1-min.jpg', 'admin', 35, '14:50:11', 'Jumat'),
(53, 'artikel1', 'artikel1', '<div style=\"margin-bottom: .0001pt; margin: 0cm;\">\r\n<b><span style=\"font-size: 13.5pt;\">1. Definisi Jaringan Komputer</span></b><span style=\"font-size: 13.5pt;\"></span></div>\r\n<div style=\"margin-bottom: .0001pt; margin: 0cm; text-align: justify;\">\r\n<span style=\"font-size: 13.5pt;\">Jaringan komputer (jaringan) adalah sebuah\r\nsistem yang terdiri atas komputer-komputer yang didesain untuk dapat berbagi\r\nsumber daya (printer, CPU), berkomunikasi (surel, pesan instan), dan dapat\r\nmengakses informasi(peramban web).</span></div>\r\n\r\n<span style=\"font-size: 13.5pt;\">Tujuan dari jaringan komputer adalah agar\r\ndapat mencapai tujuannya, setiap bagian dari jaringan komputer dapat meminta\r\ndan memberikan layanan (service). Pihak yang meminta/menerima layanan disebut\r\nklien (client) dan yang memberikan/mengirim layanan disebut peladen (server).\r\nDesain ini disebut dengan sistem client-server, dan digunakan pada hampir\r\nseluruh aplikasi jaringan komputer. Dua buah komputer yang masing-masing\r\nmemiliki sebuah kartu jaringan, kemudian dihubungkan melalui kabel maupun\r\nnirkabel sebagai medium transmisi data, dan terdapat perangkat lunak sistem\r\noperasi jaringan akan membentuk sebuah jaringan komputer yang sederhana.\r\nApabila ingin membuat jaringan komputer yang lebih luas lagi jangkauannya, maka\r\ndiperlukan peralatan tambahan seperti Hub, Bridge, Switch, Router, Gateway\r\nsebagai peralatan interkoneksinya.[1] <br></span><p></p>', '2020-09-18', 'computer-network.jpg', 'admin', 4, '15:40:58', 'Jumat'),
(54, 'Mobile Development', 'mobile-development', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>', '2020-09-18', 'service_2.jpg', 'admin', 9, '15:41:21', 'Jumat'),
(55, 'Pendaftaran pelatihan', 'pendaftaran-pelatihan', '<p>daftar <a href=\"https://himatif.uqgresik.ac.id/\" target=\"_blank\">di sini</a><br></p>', '2020-09-18', 'PAK-min.jpg', 'admin', 7, '15:42:04', 'Jumat'),
(61, 'Welcome to Code Crafters', 'welcome-to-code-crafters', '<br>', '2020-09-22', 'biruho.png', 'admin', 3, '02:09:50', 'Selasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`, `lampiran`) VALUES
(47, 'embus', 'embus@gmail.com', '::1', 'admin locok', '2023-04-19', '22:32:41', 'Y', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Code Crafters', '', '', '', '987654321', '081239661536', '', '', 'LOGO_CCC1.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t'),
(9, 'ngentot', 'adminuq', 'ng****t');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(19, 'Teknologi', '', 'teknologi', 'Y', 2, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(169, 696, 'AHMAD HASAN MUCHLIS', 'KKKKKK', 'YYYYY', '2023-04-19', '22:35:30', 'Y', 'mukhlispashter09@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(118, 175, 'mbus', 'mbus@gmail.com', 'yyyyy', '2023-04-19', '22:33:59', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'CC_TEKS_KANAN.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(13, 190, 'Galeri', 'albums', 'Ya', 'Bottom', 11),
(116, 192, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 23),
(149, 190, 'Berita', '/#section_berita', 'Ya', 'Bottom', 14),
(185, 191, 'Universitas Qomaruddin', 'https://uqgresik.ac.id/', 'Ya', 'Bottom', 20),
(186, 192, 'Login', 'login', 'Ya', 'Bottom', 25),
(187, 190, 'Agenda', 'agenda', 'Ya', 'Bottom', 15),
(181, 191, 'Teknik Informatika', 'https://if.uqgresik.ac.id/', 'Ya', 'Bottom', 19),
(182, 13, 'Video', 'playlist', 'Ya', 'Bottom', 13),
(183, 13, 'Foto', 'albums', 'Ya', 'Bottom', 12),
(184, 192, 'Register', 'kontributor', 'Ya', 'Bottom', 24),
(170, 188, 'Dpn Luar Negri', 'pengumuman/detail/departemen-luar-negri', 'Ya', 'Bottom', 9),
(171, 188, 'Managemen ', 'pengumuman', 'Ya', 'Bottom', 5),
(172, 188, 'Dpn media kreatif', 'pengumuman/detail/departemen-media-kreatif', 'Ya', 'Bottom', 7),
(173, 188, 'Dpn Dalam Negri', 'pengumuman/detail/departemen-dalam-negri', 'Ya', 'Bottom', 8),
(188, 190, 'Profile', '#section_about', 'Ya', 'Bottom', 2),
(189, 187, 'pelatihan', '#section_portfolio', 'Ya', 'Bottom', 16),
(190, 0, 'Menu Utama', '#', 'Ya', 'Bottom', 1),
(191, 0, 'Menu Sidebar', '#', 'Ya', 'Bottom', 18),
(192, 0, 'Menu Footer', '#', 'Ya', 'Bottom', 22),
(194, 188, 'Sejarah', '#section_about', 'Ya', 'Bottom', 3),
(196, 188, 'Team Code Crafters', '#section_team', 'Ya', 'Bottom', 4),
(197, 190, 'Contact Us', '#section_contact', 'Ya', 'Bottom', 17),
(198, 191, 'berita', 'berita', 'Ya', 'Bottom', 21),
(199, 188, 'Dpn Pendidikan', 'pengumuman/detail/departemen-pendidikan', 'Ya', 'Bottom', 6),
(200, 188, 'Dpn Dana dan Usaha', 'pengumuman/detail/departemen-dana-dan-usaha', 'Ya', 'Bottom', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, ''),
(79, 'Nicepage client', 'admin', 'nicepage-client', '', '', 'N', 'admin', 'N', 0, ''),
(77, 'Module Nicepage', 'admin', 'nicepage', '', '', 'N', 'admin', 'N', 0, ''),
(78, 'Nicepage Testimoni', 'admin', 'nicepage-testimoni', '', '', 'N', 'admin', 'N', 0, ''),
(80, 'Nicepage Team', 'admin', 'nicepage-team', '', '', 'N', 'admin', 'N', 0, ''),
(81, 'Nicepage Portfolio', 'admin', 'nicepage-portfolio', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><span style=\"font-weight: bolder;\">Haloo!</span>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br><br><br></p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(61, 'Playlist Video', 'admin', 'playlist-video', 'CC.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(15, 'butuh jasa kami ', '2023-05-03', 'bg4.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('::1', '2020-08-18', 43, '1597768438'),
('127.0.0.1', '2020-08-19', 90, '1597823640'),
('::1', '2020-08-20', 42, '1597942713'),
('::1', '2020-08-21', 112, '1598020835'),
('::1', '2020-08-22', 52, '1598107273'),
('127.0.0.1', '2020-08-22', 16, '1598090748'),
('::1', '2020-08-24', 4, '1598279482'),
('::1', '2020-08-25', 2, '1598374785'),
('::1', '2020-08-26', 2, '1598417107'),
('::1', '2020-09-15', 115, '1600178859'),
('127.0.0.1', '2020-09-15', 120, '1600189095'),
('127.0.0.1', '2020-09-16', 71, '1600191075'),
('::1', '2020-09-16', 974, '1600275489'),
('::1', '2020-09-17', 1012, '1600360763'),
('::1', '2020-09-18', 462, '1600448344'),
('::1', '2020-09-19', 488, '1600534742'),
('::1', '2020-09-20', 762, '1600621189'),
('::1', '2020-09-21', 862, '1600707477'),
('::1', '2020-09-22', 144, '1600781377'),
('::1', '2020-09-23', 74, '1600857049'),
('::1', '2020-10-02', 2, '1601645413'),
('::1', '2020-10-03', 1, '1601717419'),
('::1', '2020-10-04', 12, '1601828779'),
('::1', '2020-10-05', 31, '1601911146'),
('::1', '2020-10-07', 11, '1602079363'),
('::1', '2020-10-08', 20, '1602176396'),
('::1', '2020-10-09', 366, '1602232152'),
('::1', '2020-10-17', 358, '1602953576'),
('::1', '2020-10-18', 42, '1603037922'),
('::1', '2020-10-22', 69, '1603371538'),
('::1', '2020-10-24', 1, '1603550484'),
('::1', '2020-10-25', 24, '1603596561'),
('::1', '2020-10-26', 6, '1603730725'),
('127.0.0.1', '2020-10-26', 2, '1603698230'),
('::1', '2020-10-30', 9, '1604069994'),
('::1', '2020-11-01', 2, '1604207382'),
('::1', '2020-11-03', 81, '1604422664'),
('::1', '2020-11-04', 5, '1604425000'),
('::1', '2020-11-05', 21, '1604591977'),
('::1', '2020-11-10', 2, '1604992259'),
('::1', '2020-11-15', 196, '1605456315'),
('::1', '2020-11-16', 34, '1605538982'),
('::1', '2020-11-18', 4, '1605710953'),
('::1', '2020-11-19', 142, '1605805187'),
('::1', '2020-11-20', 162, '1605841787'),
('::1', '2020-12-04', 31, '1607047724'),
('::1', '2020-12-13', 55, '1607848967'),
('::1', '2020-12-14', 67, '1607929985'),
('::1', '2020-12-15', 2, '1608032756'),
('::1', '2020-12-16', 2, '1608099829'),
('::1', '2020-12-17', 33, '1608218282'),
('::1', '2020-12-19', 2, '1608362705'),
('::1', '2021-08-20', 15, '1629473551'),
('::1', '2021-10-14', 20, '1634202091'),
('127.0.0.1', '2021-10-14', 5, '1634201260'),
('::1', '2021-10-21', 2, '1634831135'),
('::1', '2021-10-22', 3, '1634855606'),
('::1', '2021-10-23', 35, '1635004021'),
('127.0.0.1', '2021-10-23', 2, '1635002716'),
('::1', '2021-10-24', 19, '1635043031'),
('::1', '2021-10-26', 19, '1635267564'),
('::1', '2021-10-27', 2, '1635267705'),
('::1', '2021-11-05', 1, '1636096908'),
('::1', '2021-11-06', 1, '1636185251'),
('::1', '2021-11-09', 2, '1636469840'),
('::1', '2021-11-10', 1, '1636499785'),
('::1', '2021-11-11', 1, '1636615400'),
('127.0.0.1', '2023-04-09', 12, '1681047292'),
('::1', '2023-04-10', 3, '1681123807'),
('127.0.0.1', '2023-04-10', 982, '1681145671'),
('127.0.0.1', '2023-04-11', 310, '1681232274'),
('127.0.0.1', '2023-04-12', 63, '1681239281'),
('::1', '2023-04-13', 34, '1681382370'),
('::1', '2023-04-14', 29, '1681484321'),
('127.0.0.1', '2023-04-14', 1, '1681484481'),
('127.0.0.1', '2023-04-18', 8, '1681770209'),
('::1', '2023-04-18', 3, '1681770349'),
('::1', '2023-04-19', 20, '1681918601'),
('127.0.0.1', '2023-04-20', 1, '1681996432'),
('::1', '2023-04-21', 1, '1682025663'),
('127.0.0.1', '2023-04-21', 1, '1682029882'),
('::1', '2023-04-28', 4, '1682694478'),
('::1', '2023-05-03', 60, '1683110551'),
('::1', '2023-05-04', 47, '1683181559'),
('::1', '2023-05-07', 2, '1683460199'),
('::1', '2023-05-14', 1, '1684071964'),
('::1', '2023-05-16', 5, '1684223931'),
('::1', '2023-05-28', 3, '1685272355'),
('::1', '2023-06-02', 28, '1685681652'),
('::1', '2023-06-05', 7, '1685947788'),
('::1', '2023-06-06', 1, '1686029336'),
('::1', '2023-10-07', 7, '1696697811'),
('::1', '2023-10-08', 59, '1696782539'),
('::1', '2023-10-10', 38, '1696946874'),
('::1', '2023-10-11', 375, '1697043410'),
('::1', '2023-10-12', 12, '1697044891');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(39, 'Code Crafters', 'admin', 'code-crafters', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nicepage`
--

CREATE TABLE `tbl_nicepage` (
  `id` int(5) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_nicepage`
--

INSERT INTO `tbl_nicepage` (`id`, `key`, `value`) VALUES
(14, 'mode', '\"1\"'),
(17, 'section_about', '{\"judul\":\"Sejarah  \",\"deskripsi\":\"Berdirinya Perusahaan Code Crafters\",\"page\":\"64\",\"max_kata\":\"\",\"label_link\":\"\"}'),
(18, 'section_services', '{\"judul\":\"artikel\",\"deskripsi\":\"artikel \",\"page_1\":\"53\",\"layout\":\"3\",\"max_kata\":\"\",\"url_link\":\"\",\"label_link\":\"\"}'),
(19, 'section_berita', '{\"judul\":\"Artikel dan Berita\",\"deskripsi\":\"\",\"kategori\":\"19\",\"jumlah\":\"9\",\"layout\":\"3\",\"label_link\":\"\"}'),
(20, 'sidebar_aktif', '[\"widget_banner\",\"widget_search\",\"widget_side_menu\",\"widget_berita_kategori\",\"widget_berita_populer\",\"widget_berita_tag\",\"widget_berita_utama\",\"widget_komentar\",\"widget_polling\",\"widget_social\"]'),
(21, 'sections_aktif', '[\"section_about\",\"section_berita\",\"section_contact\",\"section_hero\",\"section_portfolio\",\"section_team\"]'),
(23, 'sections_order', '[\"section_hero\",\"section_about\",\"section_team\",\"section_berita\",\"section_portfolio\",\"section_contact\"]'),
(26, 'sidebar_order', '[\"widget_search\",\"widget_banner\",\"widget_social\",\"widget_side_menu\",\"widget_berita_kategori\",\"widget_berita_utama\",\"widget_berita_populer\",\"widget_berita_tag\",\"widget_komentar\",\"widget_polling\"]'),
(27, 'section_cta', '{\"text\":\"blog himatif\",\"url\":\"\",\"label\":\"Join Now\"}'),
(28, 'section_feature', '{\"judul\":\"booting and memory\",\"deskripsi\":\"booting and memory\",\"page_1\":\"52\",\"page_2\":\"55\",\"page_3\":\"64\",\"layout\":\"3\",\"max_kata\":\"\",\"url_link\":\"\",\"label_link\":\"\"}'),
(29, 'section_portfolio', '{\"judul\":\"Memories\",\"deskripsi\":\"\",\"jumlah\":\"6\",\"layout\":\"3\",\"label_link\":\"\"}'),
(30, 'section_client', '{\"judul\":\"Client\",\"deskripsi\":\"Quis consequatur saepe eligendi voluptatem consequatur dolor consequuntur\",\"jumlah\":\"8\"}'),
(31, 'section_team', '{\"judul\":\"Team Code Crafters\",\"deskripsi\":\"\",\"person_1\":\"7\",\"person_2\":\"11\",\"person_3\":\"4\",\"person_4\":\"2\",\"person_5\":\"10\",\"person_6\":\"6\",\"person_7\":\"12\",\"person_8\":\"9\",\"person_9\":\"5\",\"person_10\":\"13\",\"layout\":\"4\",\"label_link\":\"\"}'),
(32, 'section_hero', '{\"page_1\":\"61\",\"caption_1\":\"1\",\"page_2\":\"62\",\"caption_2\":\"1\",\"page_3\":\"63\",\"caption_3\":\"1\",\"label_link\":\"\"}'),
(33, 'section_contact', '{\"judul\":\"Contact Us\",\"deskripsi\":\"\",\"text\":\"<h3><span style=\\\"font-weight: bold;\\\">Tanya Admin<\\/span><\\/h3><h6><span style=\\\"font-family: \\\" times=\\\"\\\" new=\\\"\\\" roman\\\";\\\"=\\\"\\\">Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<\\/span><span style=\\\"font-weight: bold;\\\"><\\/span><\\/h6><h6><span style=\\\"font-weight: bold;\\\"><\\/span><\\/h6><h3 style=\\\"line-height: 1.2;\\\"><br>\\r\\n<\\/h3>\",\"embeded_code\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d15838.72865885987!2d112.58196168278809!3d-7.046585669142602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e77e31eca2dc6d1%3A0xec56c122756883b3!2sUniversitas%20Qomaruddin!5e0!3m2!1sen!2sid!4v1681208084119!5m2!1sen!2sid\\\" width=\\\"400\\\" height=\\\"250\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}'),
(46, 'setting_sidebar', '[{\"widget_search\":{\"judul\":\"\"}},{\"widget_social\":{\"judul\":\"Temukan juga kami di\",\"teks\":\"Ikuti kami di facebook, twitter, Instagram, Youtube dan dapatkan informasi terbaru dari kami disana.\"}},{\"widget_menu\":{\"judul\":\"\",\"group_menu\":\"\"}},{\"widget_berita_kategori\":{\"judul\":\"Kategori\",\"tampilkan_jumlah_berita\":\"1\"}},{\"widget_video\":{\"judul\":\"\",\"playlist\":\"\",\"jumlah\":\"1\"}},{\"widget_text\":{\"judul\":\"\",\"teks\":\"\"}},{\"widget_polling\":{\"judul\":\"\"}},{\"widget_gallery\":{\"judul\":\"\",\"album\":\"\",\"jumlah\":\"1\"}}]'),
(50, 'section_agenda', '{\"judul\":\"Agenda\",\"deskripsi\":\"Agenda Terdekat\",\"jumlah\":\"4\",\"layout\":\"column\",\"label_link\":\"\",\"gambar_halaman\":\"0\"}'),
(51, 'section_pengumuman', '{\"judul\":\"Team Departemen\",\"deskripsi\":\"Team Departemen dalam kepengurusan Himpunan Mahasiswa Teknik Informatika\",\"jumlah\":\"3\",\"layout\":\"column\",\"label_link\":\"\",\"gambar_halaman\":\"0\"}'),
(34, 'section_testimonial', '{\"judul\":\"link terkait\",\"deskripsi\":\"\",\"jumlah\":\"6\"}'),
(35, 'section_faq', '{\"judul\":\"FAQs\",\"deskripsi\":\"Hai\",\"tanya_1\":\"Apakabar\",\"jawab_1\":\"udah makan hari ini, kalo belu makan sana\",\"tanya_2\":\"Bisa Dibantu\",\"jawab_2\":\"langsung tanya admin di halaman contact\"}'),
(36, 'lokasi_menu', '{\"menu_utama\":\"190\",\"menu_footer\":\"191\"}'),
(37, 'faq_max', '\"2\"'),
(38, 'feature_max', '\"3\"'),
(39, 'services_max', '\"4\"'),
(40, 'slide_max', '\"3\"'),
(41, 'team_max', '\"10\"'),
(42, 'header_embeded_code', '\"\"'),
(43, 'footer_embeded_code', '\"\"'),
(44, 'tagline', '{\"text\":\"By Code Crafters\",\"header\":\"1\",\"footer\":\"1\"}'),
(45, 'btn_back_to_top', '\"1\"'),
(47, 'terbaru_max', '\"8\"'),
(48, 'pilihan_max', '\"5\"'),
(49, 'setting_blog_sections', '[{\"blog_section_berita_slider\":{\"judul\":\"\",\"group\":\"headline\",\"jumlah\":\"4\"}},{\"blog_section_berita_populer\":{\"judul\":\"Berita Populer\",\"jumlah\":\"3\"}},{\"blog_section_iklan_home\":{\"judul\":\"\",\"iklan_home\":\"2\"}},{\"blog_section_berita_per_kategori\":{\"judul\":\"\",\"kategori\":\"21\",\"jumlah\":\"3\"}},{\"blog_section_berita_terbaru\":{\"judul\":\" Berita Terbaru \",\"jumlah\":\"4\"}}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nicepage_client`
--

CREATE TABLE `tbl_nicepage_client` (
  `id_client` int(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nicepage_pengumuman`
--

CREATE TABLE `tbl_nicepage_pengumuman` (
  `username` varchar(50) DEFAULT NULL,
  `id_pengumuman` int(5) NOT NULL,
  `judul_seo` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `dibaca` int(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_nicepage_pengumuman`
--

INSERT INTO `tbl_nicepage_pengumuman` (`username`, `id_pengumuman`, `judul_seo`, `judul`, `gambar`, `deskripsi`, `dibaca`, `tanggal`) VALUES
('adminuq', 2, 'departemen-pendidikan', 'Departemen pendidikan', 'pendidikan2.jpg', 'Departemen Dana dan Usaha', 16, '2020-11-20'),
('adminuq', 4, 'departemen-dalam-negri', 'Departemen Dalam Negri', 'dalam_negeri2.jpg', 'Departemen Dalam Negri', 30, '2020-11-24'),
('adminuq', 9, 'departemen-luar-negri', 'Departemen Luar Negri', 'luar_negeri2.jpg', 'Departemen Luar Negri', 8, '2023-05-03'),
('adminuq', 6, 'departemen-media-kreatif', 'Departemen Media Kreatif', 'media_kreatif.jpg', '<p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\\\"><strong style=\\\"margin: 0px; padding: 0px;\\\">Departemen Media Kreatif<br style=\\\"margin: 0px; padding: 0px;\\\"></strong></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Halo semuanya ! Untuk di halaman ini, akan ada penjelasan dari Biro Media Kreatif</span></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Departemen Media Kreatif adalah salah satu&nbsp;</span><span style=\\\"font-size: 1rem;\\\">Departemen</span><span style=\\\"font-size: 1rem;\\\">&nbsp;yang berada di Himatif UQ. Biro ini menangani hal – hal yang berhubungan dengan segala informasi, dokumentasi, dan publikasi Himatif UQ, khususnya kepada anggota Himatif UQ dan umumnya diluar anggota Himatif UQ.</span></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Kepala Departemen: Muhammad Rizqi Hildani</b></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Staff / Anggota:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Mohammad Rifqi Saniy<br></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Mohamad Khusaini Prihambudi</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Abdullah Syauqillah </li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Anugerah Adjie Firmansyah </span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Rahmad Muhammad Arif Kurnia\\r\\nHidayatullah</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Akmal Kafi Ar Ridho</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">&nbsp;Putri Maulidiyah</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Mar’atus Sholikah&nbsp;<br></span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">VISI:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Menjadikan Departemen Media Kreatif&nbsp;Himatif UQ sebagai pusat informasi dan komunikasi Himatif Universitas Qomaruddin</span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">MISI:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Memberikan informasi secara merata kepada anggota Himatif Universitas Qomaruddin&nbsp;melalui media elektronik dan non-elektronik.</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Meng-</span><i style=\\\"margin: 0px; padding: 0px;\\\">update</i><span style=\\\"margin: 0px; padding: 0px;\\\">&nbsp;informasi terbaru mengenai informatika dan non-informatika.</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Mengoptimalkan pengelolaan informasi.</span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Jobdesk Biro Media Informasi:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Menjadi pusat informasi dan komunikasi bagi seluruh anggota&nbsp;</span>Himatif Universitas Qomaruddin.</li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Mengelola website, media sosial, dan majalah dinding&nbsp;</span>Himatif Universitas Qomaruddin.</li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Membuat organigram kepengurusan Himatif Universitas Qomaruddinsaat ini serta kalender aktivitas&nbsp;</span>Himatif Universitas Qomaruddin.</li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Meliput kegiatan yang dilaksanakan oleh&nbsp;</span>Himatif Universitas Qomaruddin</li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><br></p><div id=\\\"comments\\\" class=\\\"commentwrap\\\" style=\\\"margin: 2em 0px 1.25em; padding: 0px; position: relative; clear: both; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><div id=\\\"respond\\\" class=\\\"comment-respond\\\" style=\\\"margin: 0px; padding: 0px 0px 0.5em; position: relative; clear: both;\\\"></div></div><div id=\\\"themify_builder_content-12\\\" data-postid=\\\"12\\\" class=\\\"themify_builder_content themify_builder_content-12 themify_builder themify_builder_front\\\" style=\\\"margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\\\"></div>', 53, '2020-12-01'),
('adminuq', 7, 'departemen-dana-dan-usaha', 'Departemen Dana dan Usaha', 'dana_usaha.jpg', '<p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Departemen Dana dan Usaha</b></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Halo semuanya ! Untuk di halaman ini, akan ada penjelasan dari Departemen Dana dan Usaha.</span></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Departemen Dana dan Usaha merupakan bagian dalam Himatif UQ yang mengelola sumber dana dan kekayaan Himatif UQ&nbsp;dengan professional dan transparan.</span></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Kepala Biro: Emiliatus Sholihah</b></p><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Staff / Anggota:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Shalwa Az’zahra Rahmadita </span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Linda Putri Ayu Cahyani </span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Wakhidatus Tsalis</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Firnanda Permatasari</li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Dzulfikar Muslim </li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Sinta Eliyatin Mahmudah </li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Syahrial Fajrin</li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\">Fakhriyyatul Fauziyyah &nbsp;<span style=\\\"margin: 0px; padding: 0px;\\\"> </span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">VISI:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Mengelola pemasukan dan pengeluaran dana dalam Himatif UQ&nbsp;&nbsp;secara profesional, efektif, dan transparan.</span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">MISI:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Profesional dalam mengelola keuangan,</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Efektif dalam mengatur pengeluaran dana, dan</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Transparan dalam pembuatan laporan keuangan.</span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Job Description Biro Keuangan:</b></p><ul style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Mengelola keuangan dalam Himatif UQ secara profesional.</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Membuat laporan keuangan.</span></li></ul><p style=\\\"margin-right: 0px; margin-bottom: 2em; margin-left: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><b style=\\\"margin: 0px; padding: 0px;\\\">Program Kerja Biro Keuangan:</b></p><ol style=\\\"margin-right: 0px; margin-bottom: 1.4em; margin-left: 1.6em; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\\\"><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Transparansi Dana</span></li><li aria-level=\\\"1\\\" style=\\\"margin: 0px 0px 1em; padding: 0px;\\\"><span style=\\\"margin: 0px; padding: 0px;\\\">Workshop LK (Laporan Keuangan)</span></li></ol>', 20, '2020-11-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nicepage_portfolio`
--

CREATE TABLE `tbl_nicepage_portfolio` (
  `id_portfolio` int(5) NOT NULL,
  `nama_project` varchar(255) DEFAULT NULL,
  `nama_client` varchar(100) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_nicepage_portfolio`
--

INSERT INTO `tbl_nicepage_portfolio` (`id_portfolio`, `nama_project`, `nama_client`, `url`, `deskripsi`, `image`) VALUES
(1, 'Team Bersama DPL', '', '', '', 'DPL.jpg'),
(5, 'Pelepasan Wirausaha Merdeka Kampus Merdeka 2023 di Universitas Qomaruddin Gresik', 'Peserta MBKM', '', '', 'PELEPASAN1.jpg'),
(7, 'Grand Launching Wirausaha Merdeka Kampus Merdeka 2023', 'Peserta MBKM', '', '', 'LAUNCHING1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nicepage_team`
--

CREATE TABLE `tbl_nicepage_team` (
  `id_team` int(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `socmed_fb` varchar(100) DEFAULT NULL,
  `socmed_twitter` varchar(100) DEFAULT NULL,
  `socmed_ig` varchar(100) DEFAULT NULL,
  `socmed_linkedin` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_nicepage_team`
--

INSERT INTO `tbl_nicepage_team` (`id_team`, `nama`, `jabatan`, `photo`, `socmed_fb`, `socmed_twitter`, `socmed_ig`, `socmed_linkedin`) VALUES
(5, 'Ainun Nafiah', 'Member Of Production', '20230930_0058191.png', '', '', 'https://instagram.com/aiinun____?igshid=MzMyNGUyNmU2YQ==', ''),
(2, 'Nita Dwi Kurniawati', 'Administration', 'nita1.png', '', '', 'https://instagram.com/esoyen_enak?igshid=MzMyNGUyNmU2YQ==', ''),
(4, 'Ahmad Hasan Muchlis', 'Manager Of Production', 'muklis1.png', '', '', 'https://instagram.com/mukhlis_mojan?igshid=MzMyNGUyNmU2YQ==', ''),
(6, 'Emiliatus Sholihah', 'Member Of Administration', '20230930_1019251.png', '', '', 'https://instagram.com/emiliatusshh?igshid=MzMyNGUyNmU2YQ==', ''),
(7, 'Nur Aini Adelliyah', 'Head Of Manager', '20230930_1005431.png', '', '', 'https://instagram.com/adelliyah2312?igshid=MzMyNGUyNmU2YQ==', ''),
(9, 'Siti Asyrifah', 'Member Of Operasional', 'IIF1.png', '', '', 'https://instagram.com/maanusiiiaaaa_?igshid=MzMyNGUyNmU2YQ==', ''),
(10, 'Linda Putri Ayu Cahyani', 'Manager Of Operasional', 'linda1.png', '', '', 'https://instagram.com/lindaa_putriiii?igshid=MzMyNGUyNmU2YQ==', ''),
(11, 'Adilla Mahmudah', 'Manager Of Marketing', 'dilla1.png', '', '', 'https://instagram.com/adillaaaaaaaa_?igshid=MzMyNGUyNmU2YQ==', ''),
(12, 'Ajeng Sri Indawati', 'Member Of Marketing', 'ajeng1.png', '', '', 'https://instagram.com/aajngsr_?igshid=MzMyNGUyNmU2YQ==', ''),
(13, 'Wakhidatus Tsalis', 'Member Of Production', '20230930_1027081.png', '', '', 'https://instagram.com/wakhidatustsalis123?igshid=MzMyNGUyNmU2YQ==', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nicepage_testimoni`
--

CREATE TABLE `tbl_nicepage_testimoni` (
  `id_testimoni` int(5) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `profesi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `testimoni` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_nicepage_testimoni`
--

INSERT INTO `tbl_nicepage_testimoni` (`id_testimoni`, `nama`, `profesi`, `photo`, `testimoni`) VALUES
(17, 'Saul Parman', 'Ceo & Founder', 'testimoni_3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
(19, 'uq gresik', 'kampus', 'Logo-UQ-warna-1.png', 'universitas qomaruddin'),
(21, 'Samuel Sumadi', 'Freelance', 'testimoni_2.jpg', 'Laudem latine persequeris id sed, ex fabulas delectus quo. No vel partiendo abhorreant vituperatoribus, ad pro quaestio laboramus Laudem latine persequeris id sed, ex fabulas delectus quo.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'Swarakalibata Magazine Template', 'admin', '', 'phpmu-magazine', 'N'),
(24, 'Swarakalibata Personal Template', 'admin', '', 'phpmu-standar', 'N'),
(28, 'Company Profile', 'admin', '', 'nicepage', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '57b83f003ac16246a7b31397e47f3d89d2da1344f73b77ff1739a2d1f01eb722c874936ad467e80e4cf1460f1f4aab338ac77a9001df57d110f9c1e4f3c46c6d', 'Code Crafters', 'ccrafters925@gmail.com', '085604414926', 'CC2.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('admin2', 'edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648', 'Kontributor', 'Kontributor@gmail.com', '12345678987', 'icon.png', 'kontributor', 'N', 'f76ad5ee772ac196cbc09824e24859ee'),
('adminuq', 'a0b0b8164c0a86f84cec03318c037599a681db94f39d462d2fda2927157d004e83348c36bb0bfa96517e5e20077f5d911375cd621108f83e9ed915e471304f66', 'Code Crafters', 'codecrafters@gmail.com', '081239651412', 'logohimatif1.png', 'admin', 'N', '6cb594c9d90e628179e00403d63bd196-20230411210450');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, 'f76ad5ee772ac196cbc09824e24859ee', 18),
(16, 'q173s8hs1jl04st35169ccl8o7', 70),
(17, 'q173s8hs1jl04st35169ccl8o7', 66),
(18, 'q173s8hs1jl04st35169ccl8o7', 65),
(19, 'q173s8hs1jl04st35169ccl8o7', 64),
(20, 'q173s8hs1jl04st35169ccl8o7', 63),
(21, 'q173s8hs1jl04st35169ccl8o7', 62),
(22, 'q173s8hs1jl04st35169ccl8o7', 61),
(23, 'q173s8hs1jl04st35169ccl8o7', 59),
(24, 'q173s8hs1jl04st35169ccl8o7', 57),
(25, 'q173s8hs1jl04st35169ccl8o7', 46),
(26, 'q173s8hs1jl04st35169ccl8o7', 45),
(27, 'q173s8hs1jl04st35169ccl8o7', 44),
(28, 'q173s8hs1jl04st35169ccl8o7', 43),
(29, 'q173s8hs1jl04st35169ccl8o7', 41),
(30, 'q173s8hs1jl04st35169ccl8o7', 35),
(31, 'q173s8hs1jl04st35169ccl8o7', 34),
(32, 'q173s8hs1jl04st35169ccl8o7', 33),
(33, 'q173s8hs1jl04st35169ccl8o7', 31),
(34, 'q173s8hs1jl04st35169ccl8o7', 18),
(35, 'q173s8hs1jl04st35169ccl8o7', 10),
(36, 'q173s8hs1jl04st35169ccl8o7', 2),
(37, '6cb594c9d90e628179e00403d63bd196-20230411210450', 70),
(38, '6cb594c9d90e628179e00403d63bd196-20230411210450', 66),
(39, '6cb594c9d90e628179e00403d63bd196-20230411210450', 65),
(40, '6cb594c9d90e628179e00403d63bd196-20230411210450', 64),
(41, '6cb594c9d90e628179e00403d63bd196-20230411210450', 63),
(42, '6cb594c9d90e628179e00403d63bd196-20230411210450', 62),
(43, '6cb594c9d90e628179e00403d63bd196-20230411210450', 61),
(44, '6cb594c9d90e628179e00403d63bd196-20230411210450', 59),
(45, '6cb594c9d90e628179e00403d63bd196-20230411210450', 57),
(46, '6cb594c9d90e628179e00403d63bd196-20230411210450', 46),
(47, '6cb594c9d90e628179e00403d63bd196-20230411210450', 45),
(48, '6cb594c9d90e628179e00403d63bd196-20230411210450', 44),
(49, '6cb594c9d90e628179e00403d63bd196-20230411210450', 43),
(50, '6cb594c9d90e628179e00403d63bd196-20230411210450', 41),
(51, '6cb594c9d90e628179e00403d63bd196-20230411210450', 35),
(52, '6cb594c9d90e628179e00403d63bd196-20230411210450', 34),
(53, '6cb594c9d90e628179e00403d63bd196-20230411210450', 33),
(54, '6cb594c9d90e628179e00403d63bd196-20230411210450', 31),
(55, '6cb594c9d90e628179e00403d63bd196-20230411210450', 18),
(56, '6cb594c9d90e628179e00403d63bd196-20230411210450', 10),
(57, '6cb594c9d90e628179e00403d63bd196-20230411210450', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 64, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 61, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 26, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 32, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 48, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 27, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 127, 'Minggu', '2014-08-17', '16:51:04', 'perang'),
(176, 61, 'admin', 'Pelepasan Wirausaha Merdeka Kampus Merdeka 2023', 'pelepasan-wirausaha-merdeka-kampus-merdeka-2023', '', 'PELEPASAN.jpg', '', 'https://youtu.be/fOw1argtLLI?si=vB8c_ggKegLD5f24', 2, 'Rabu', '2023-10-11', '19:21:38', 'code-crafters'),
(177, 61, 'admin', 'Grand Launching Peserta WMK 2023', 'grand-launching-peserta-wmk-2023', '', 'launching2.jpg', '', 'https://youtu.be/5J-yxL8IYeE?si=TiJl3KkhnRsr3ud0', 5, 'Rabu', '2023-10-11', '19:23:36', 'code-crafters');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indeks untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indeks untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indeks untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indeks untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `tbl_nicepage`
--
ALTER TABLE `tbl_nicepage`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_nicepage_client`
--
ALTER TABLE `tbl_nicepage_client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `tbl_nicepage_pengumuman`
--
ALTER TABLE `tbl_nicepage_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `tbl_nicepage_portfolio`
--
ALTER TABLE `tbl_nicepage_portfolio`
  ADD PRIMARY KEY (`id_portfolio`);

--
-- Indeks untuk tabel `tbl_nicepage_team`
--
ALTER TABLE `tbl_nicepage_team`
  ADD PRIMARY KEY (`id_team`);

--
-- Indeks untuk tabel `tbl_nicepage_testimoni`
--
ALTER TABLE `tbl_nicepage_testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=726;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbl_nicepage`
--
ALTER TABLE `tbl_nicepage`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `tbl_nicepage_client`
--
ALTER TABLE `tbl_nicepage_client`
  MODIFY `id_client` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_nicepage_pengumuman`
--
ALTER TABLE `tbl_nicepage_pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_nicepage_portfolio`
--
ALTER TABLE `tbl_nicepage_portfolio`
  MODIFY `id_portfolio` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_nicepage_team`
--
ALTER TABLE `tbl_nicepage_team`
  MODIFY `id_team` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_nicepage_testimoni`
--
ALTER TABLE `tbl_nicepage_testimoni`
  MODIFY `id_testimoni` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
