import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Saya menggunakan font Plus Jakarta Sans supaya tampilan teks menu terlihat bersih dan modern.
// Pemilihan warna cokelat tua dan hijau gelap disesuaikan dengan tema kantin kampus yang teknik abis
// serta warna hijau memudahkan pengguna membedakan antara nama makanan dan nominal harganya.
class TeksKantin extends StatelessWidget {
  final String isiTeks;
  final double ukuran;
  final FontWeight ketebalan;
  final Color? warna;

  const TeksKantin(
    this.isiTeks, {
    super.key,
    this.ukuran = 14.0,
    this.ketebalan = FontWeight.normal,
    this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      isiTeks,
      style: GoogleFonts.plusJakartaSans(
        fontSize: ukuran,
        fontWeight: ketebalan,
        color: warna ?? const Color(0xFF2C1E16),
      ),
    );
  }
}
