import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/teks_kantin.dart';

class HalamanDetailMenu extends StatelessWidget {
  final String namaMenu;
  final int hargaMenu;

  const HalamanDetailMenu({
    super.key,
    required this.namaMenu,
    required this.hargaMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const TeksKantin(
          'Rincian Menu',
          ukuran: 18,
          ketebalan: FontWeight.bold,
          warna: Colors.white,
        ),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.fastfood_rounded,
                  size: 64,
                  color: Color(0xFF6F4E37),
                ),
                const SizedBox(height: 16),
                TeksKantin(
                  namaMenu,
                  ukuran: 20,
                  ketebalan: FontWeight.bold,
                ),
                const SizedBox(height: 8),
                TeksKantin(
                  'Harga Satuan: Rp $hargaMenu',
                  ukuran: 16,
                  ketebalan: FontWeight.w600,
                  warna: Colors.green[800],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6F4E37),
                  ),
                  onPressed: () => Get.back(),
                  child: const TeksKantin(
                    'Kembali ke Daftar',
                    ukuran: 14,
                    ketebalan: FontWeight.w600,
                    warna: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
