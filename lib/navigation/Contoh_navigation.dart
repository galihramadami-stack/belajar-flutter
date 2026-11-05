import 'package:flutter/material.dart';
import 'package:galih_flutter/navigation/Aboute_page.dart';

class ContohNavigation extends StatelessWidget {
  const ContohNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutePage(
                        nama: "Galih",
                        kelas: "XXI RPL 3",
                        umur: "18",
                      );
                    },
                  ),
                );
              },
              child: const Text("Pindah Ke Halaman About"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid');
              },
              child: const Text("Latihan Grid"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: const Text("Halaman List"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list2');
              },
              child: const Text("Halaman List 2"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid2');
              },
              child: const Text("Latihan Grid 2"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list3');
              },
              child: const Text("Latihan List 3"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout1');
              },
              child: const Text("Layout Satu"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout2');
              },
              child: const Text("Layout Dua"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout3');
              },
              child: const Text("Layout Tiga"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/layout4');
              },
              child: const Text("Layout Empat"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/expanded');
              },
              child: const Text("Expanded"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stack');
              },
              child: const Text("Stack"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/belajar1');
              },
              child: const Text("Belajar Satu"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/belajar2');
              },
              child: const Text("Belajar Dua"),
            ),
          ],
        ),
      ),
    );
  }
}
