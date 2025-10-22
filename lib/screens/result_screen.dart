import 'package:flutter/material.dart';
import 'home_screen.dart';

class ResultScreen extends StatelessWidget {
  final String ocrText;

  const ResultScreen({super.key, required this.ocrText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SelectableText(
            ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : ocrText, // Tidak lagi diubah dengan replaceAll()
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),

      // menamambahkan FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi langsung kembali ke homescreen dan menghapus semua halaman sebelumnya
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (Route<dynamic> route) => false,
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.home),
      ),
    );
  }
}
