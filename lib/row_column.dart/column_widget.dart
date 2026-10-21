import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlutterLogo(size: 50),
        FlutterLogo(size: 50),
        FlutterLogo(size: 50),
      ],
    );
  }
}