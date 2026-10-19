import 'package:flutter/material.dart';

//bagian main app
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
          title: const Text("Belajar flutter"),
          backgroundColor: Colors.blue,
        ), // AppBar
        body: const Center(
          child: Text(
            "hello flutter",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.amber,
              fontStyle: FontStyle.italic,
            ),
          ),
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}
