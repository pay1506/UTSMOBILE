# Aplikasi Pencatat Menu Kantin - UTS Pemrograman Mobile

Aplikasi Flutter sederhana untuk mencatat dan menampilkan daftar menu kantin kampus. Dibuat untuk memenuhi Ujian Tengah Semester Ganjil 2026/2027 mata kuliah Pemrograman Mobile.

## Identitas Mahasiswa
* **Nama:** Naufal Dimas Fajri
* **NIM:** 3337240070
* **Mata Kuliah:** Pemrograman Mobile
* **Dosen Pengampu:** Royan Habibie Sukarna

## Fitur Aplikasi
1. **Halaman Daftar Menu:** Menampilkan daftar menu awal beserta harganya menggunakan `ListView.builder` dan `Card`.
2. **Halaman Detail Menu:** Menampilkan rincian nama dan harga hidangan saat item dipilih.
3. **Halaman Tambah Menu:** Form input menu baru dengan validasi tidak boleh kosong dan validasi input angka pada harga.

## Package yang Digunakan
* `get`: Untuk manajemen navigasi antar halaman (`GetMaterialApp`, `Get.to()`, `Get.back()`).
* `google_fonts`: Untuk kustomisasi tipografi pada custom reusable widget (`TeksKantin`).
