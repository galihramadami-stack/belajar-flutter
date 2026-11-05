import 'package:flutter/material.dart';

class AboutePage extends StatelessWidget {
  final String nama, kelas, umur;

  const AboutePage({
    super.key,
    required this.nama,
    required this.kelas,
    required this.umur,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman About"),
            Text("Nama Lengkap $nama"),
            Text("Kelas $kelas"),
            Text("Umur $umur"),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.amber,
                child: const Text("Kembali"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
