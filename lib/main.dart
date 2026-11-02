import 'package:flutter/material.dart';
import 'package:galih_flutter/row_column.dart/belajar_widget.dart';
import 'package:galih_flutter/size_box_widget/ExpandedWidget.dart';
import 'package:galih_flutter/size_box_widget/LayouteDua.dart';
import 'package:galih_flutter/size_box_widget/LayouteEempat.dart';
import 'package:galih_flutter/size_box_widget/LayouteSatu.dart';
import 'package:galih_flutter/size_box_widget/LayouteTiga.dart';
import 'package:galih_flutter/size_box_widget/belajarSatu.dart';
import 'package:galih_flutter/size_box_widget/stackWidget.dart';

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
          title: const Text("belajar"),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ), // AppBar
        body: const Belajarsatu(),
      ), // Scaffold
    ); // MaterialApp
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

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
