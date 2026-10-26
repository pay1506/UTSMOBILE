import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/teks_kantin.dart';

class HalamanTambahMenu extends StatefulWidget {
  const HalamanTambahMenu({super.key});

  @override
  State<HalamanTambahMenu> createState() => _HalamanTambahMenuState();
}

class _HalamanTambahMenuState extends State<HalamanTambahMenu> {
  final _kunciForm = GlobalKey<FormState>();
  final _inputNamaController = TextEditingController();
  final _inputHargaController = TextEditingController();

  @override
  void dispose() {
    _inputNamaController.dispose();
    _inputHargaController.dispose();
    super.dispose();
  }

  void _simpanMenu() {
    if (_kunciForm.currentState!.validate()) {
      final dataBaru = {
        'nama': _inputNamaController.text.trim(),
        'harga': int.parse(_inputHargaController.text.trim()),
      };
      Get.back(result: dataBaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F4E37),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const TeksKantin(
          'Tambah Sajian Baru',
          ukuran: 18,
          ketebalan: FontWeight.bold,
          warna: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _kunciForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _inputNamaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Hidangan',
                  border: OutlineInputBorder(),
                ),
                validator: (nilai) {
                  if (nilai == null || nilai.trim().isEmpty) {
                    return 'Nama menu wajib diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _inputHargaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Harga (Rp)',
                  border: OutlineInputBorder(),
                ),
                validator: (nilai) {
                  if (nilai == null || nilai.trim().isEmpty) {
                    return 'Harga wajib diisi';
                  }
                  final angka = int.tryParse(nilai.trim());
                  if (angka == null || angka <= 0) {
                    return 'Masukkan nominal angka yang valid';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6F4E37),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: _simpanMenu,
                child: const TeksKantin(
                  'Simpan ke Daftar Menu',
                  ukuran: 16,
                  ketebalan: FontWeight.bold,
                  warna: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
