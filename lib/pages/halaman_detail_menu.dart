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
          'Informasi Hidangan',
          ukuran: 18,
          ketebalan: FontWeight.bold,
          warna: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: const Color(0xFF6F4E37).withValues(alpha: 0.15),
                      child: const Icon(
                        Icons.restaurant_menu_rounded,
                        size: 36,
                        color: Color(0xFF6F4E37),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TeksKantin(
                      namaMenu,
                      ukuran: 22,
                      ketebalan: FontWeight.bold,
                    ),
                    const SizedBox(height: 10),
                    TeksKantin(
                      'Rp $hargaMenu / porsi',
                      ukuran: 18,
                      ketebalan: FontWeight.w600,
                      warna: Colors.green[800],
                    ),
                    const Divider(height: 32),
                    const TeksKantin(
                      'Status: Tersedia di Kantin Pojok Teknik',
                      ukuran: 13,
                      warna: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6F4E37),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              label: const TeksKantin(
                'Kembali ke Daftar Menu',
                ukuran: 15,
                ketebalan: FontWeight.w600,
                warna: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
