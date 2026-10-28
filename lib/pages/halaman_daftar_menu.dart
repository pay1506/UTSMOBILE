import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/teks_kantin.dart';
import 'halaman_detail_menu.dart';
import 'halaman_tambah_menu.dart';

class HalamanDaftarMenu extends StatefulWidget {
  const HalamanDaftarMenu({super.key});

  @override
  State<HalamanDaftarMenu> createState() => _HalamanDaftarMenuState();
}

class _HalamanDaftarMenuState extends State<HalamanDaftarMenu> {
  final List<Map<String, dynamic>> _koleksiMenu = [
    {'nama': 'Nasi Ayam Geprek Ajib', 'harga': 15000},
    {'nama': 'Indomie Telur Kornet (Internet)', 'harga': 12000},
    {'nama': 'Nasi Goreng Madrid', 'harga': 15000},
    {'nama': 'Es Aurora', 'harga': 10000},
    {'nama': 'Roti kukus panggang (rokupang)', 'harga': 9000},
    {'nama': 'Es Teh solo', 'harga': 5000},
  ];

  // Fungsi pencocokan ikon bawaan Flutter yang unik untuk setiap menu
  IconData _pilihIkonBawaan(String nama) {
    final teks = nama.toLowerCase();
    if (teks.contains('indomie') || teks.contains('mie') || teks.contains('bakso')) {
      return Icons.ramen_dining_rounded;
    } else if (teks.contains('es') || teks.contains('teh') || teks.contains('aurora')) {
      return Icons.local_drink_rounded;
    } else if (teks.contains('roti') || teks.contains('rokupang') || teks.contains('panggang')) {
      return Icons.bakery_dining_rounded;
    } else if (teks.contains('ayam') || teks.contains('geprek')) {
      return Icons.lunch_dining_rounded;
    } else {
      return Icons.rice_bowl_rounded;
    }
  }

  Future<void> _bukaTambahMenu() async {
    final menuBaru = await Get.to(() => const HalamanTambahMenu());
    if (menuBaru != null && menuBaru is Map<String, dynamic>) {
      setState(() {
        _koleksiMenu.add(menuBaru);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        title: const TeksKantin(
          'Kantin Pojok Teknik (KAPOK)',
          ukuran: 20,
          ketebalan: FontWeight.bold,
          warna: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: TeksKantin(
              'Daftar Sajian Hari Ini (Ketuk untuk detail):',
              ukuran: 15,
              ketebalan: FontWeight.w600,
              warna: Color(0xFF5A3E2B),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              itemCount: _koleksiMenu.length,
              itemBuilder: (context, index) {
                final item = _koleksiMenu[index];
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(
                      _pilihIkonBawaan(item['nama']),
                      color: const Color(0xFF6F4E37),
                    ),
                    title: TeksKantin(
                      item['nama'],
                      ukuran: 16,
                      ketebalan: FontWeight.w600,
                    ),
                    subtitle: TeksKantin(
                      'Rp ${item['harga']}',
                      ukuran: 14,
                      ketebalan: FontWeight.w500,
                      warna: Colors.green[800],
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      Get.to(
                        () => HalamanDetailMenu(
                          namaMenu: item['nama'],
                          hargaMenu: item['harga'],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6F4E37),
        onPressed: _bukaTambahMenu,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
