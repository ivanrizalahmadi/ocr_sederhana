# ocr_sederhana

![SAMPUL](image.png)

## UJIAN TENGAH SEMESTER (UTS) - PRAKTIKUM
Mata Kuliah: Pemrograman Mobile - Aplikasi OCR

Semester: Ganjil Tahun Akademik: 2025/2026

## Soal 1: Modifikasi Struktur Navigasi dan Aliran
Tujuan: Menyederhanakan alur navigasi dan meningkatkan pengalaman pengguna di
HomeScreen.

# A. Pengubahan navigasi home
- Ubah ElevatedButton di HomeScreen (lib/screens/home_screen.dart) men-
  jadi widget ListTile
- Atur ListTile: leading: Icon(Icons.camera_alt, color: Colors.blue);
  title: Text(’Mulai Pindai Teks Baru’).
- Fungsi onTap harus menggunakan Navigator.push() untuk ke ScanScreen.
![navigasi home](image-1.png)
Sebelumnya, tombol di halaman utama (HomeScreen) berbentuk tombol biasa (ElevatedButton).
Sekarang saya ubah menjadi ListTile agar tampilannya sesuai dengan praktikum UTS. Outputnya adalah seperti berikut:
![output 1](image-2.png)
Tombol ElevatedButton pada halaman utama diubah menjadi komponen ListTile dengan ikon kamera dan teks "Mulai Pindai Teks Baru".
Perubahan ini dilakukan untuk memberikan antarmuka yang lebih dinamis dan modern, serta memudahkan pengembangan menu tambahan di masa depan.
Fungsi navigasi menggunakan Navigator.push() tetap dipertahankan untuk berpindah ke halaman ScanScreen ketika akan menekan menu tersebut.

# B. Teks Utuh dan Navigasi Balik
- Di ResultScreen (lib/screens/result_screen.dart), hapus fungsi ocrText.replaceAll
  agar hasil teks ditampilkan dengan baris baru (\n) yang utuh.
- Tambahkan FloatingActionButton dengan ikon Icons.home.
- Ketika tombol ditekan, navigasi harus kembali langsung ke HomeScreen meng-
  gunakan Navigator.pushAndRemoveUntil() (atau metode yang setara)
  untuk menghapus semua halaman di atasnya dari stack navigasi.
![kode 2](image-3.png)
Jangan lupa untuk menambahkan import home_screen
![import home](image-4.png)
Lalu untuk outputnya adalah sebagai berikut
![output 1 kamera](image-5.png)
![output 2 kamera](image-6.png)
fungsi replaceAll('\n', ' ') dihapus agar teks hasil pemindaian ditampilkan sesuai format aslinya, termasuk jeda baris.
Selain itu, ditambahkan FloatingActionButton dengan ikon home untuk mempermudah pengguna kembali ke halaman utama.
Tombol ini menggunakan metode Navigator.pushAndRemoveUntil() agar seluruh riwayat halaman sebelumnya dihapus dari navigation stack, sehingga aplikasi langsung kembali ke HomeScreen tanpa menekan tombol back berkali-kali.






This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
