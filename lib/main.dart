import 'package:flutter/material.dart';
import 'package:galih_flutter/row_column.dart/belajar_widget.dart';

// bagian main app (menjalankan aplikasi)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
          backgroundColor: Colors.blue,
        ), // AppBar
        body: const LatihanLayoutDua(), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ), // TextStyle
      ), // Text
    );
  }
}