import 'package:flutter/material.dart';

class LayoutTiga extends StatelessWidget {
  const LayoutTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text("Pemasukan"),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 80,
              color: Colors.green[100],
              alignment: Alignment.center,
              child: const Text("Pengeluaran"),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 60,
              color: Colors.red[100],
              alignment: Alignment.center,
              child: const Text("Tabungan"),
            ),
          ),
        ],
      ),
    );
  }
}
