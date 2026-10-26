import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/halaman_daftar_menu.dart';

void main() {
  runApp(const AplikasiKantinUntirta());
}

class AplikasiKantinUntirta extends StatelessWidget {
  const AplikasiKantinUntirta({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kantin Teknik',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6F4E37)),
        useMaterial3: true,
      ),
      home: const HalamanDaftarMenu(),
    );
  }
}
