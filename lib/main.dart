import 'package:flutter/material.dart';
import 'package:galih_flutter/Latihan_ke3/latihan3_widget.dart';
import 'package:galih_flutter/grid_view/Grid_basic.dart';
import 'package:galih_flutter/grid_view/grid_builder_widget.dart';
import 'package:galih_flutter/listview_widget/latihan.dart';
import 'package:galih_flutter/listview_widget/list_builder2.dart';
import 'package:galih_flutter/listview_widget/list_view.dart';
import 'package:galih_flutter/listview_widget/list_view_builder_widget.dart';
import 'package:galih_flutter/navigation/Aboute_page.dart';
import 'package:galih_flutter/navigation/Contoh_navigation.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const ContohNavigation(),
        '/grid': (context) => const GridBasic(),
        '/list': (context) => const Latihan(),
        '/list2': (context) => const Latihan3Widget(),
        '/grid2': (context) => GridBuilderWidget(),
        '/list3': (context) => const ListViewBuilderWidget(),
        '/layout1': (context) => const LayoutSatu(),
        '/layout2': (context) => const LayoutDua(),
        '/layout3': (context) => const LayoutTiga(),
        '/layout4': (context) => const LayoutEempat(),
        '/expanded': (context) => const ExpandedWidget(),
        '/stack': (context) => const StackWidget(),
        '/belajar1': (context) => const BelajarSatu(),
        '/belajar2': (context) => const BelajarWidget(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
