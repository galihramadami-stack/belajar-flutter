import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlutterLogo(size: 50,
        textColor: Colors.blue,),
        FlutterLogo(size: 50,
        textColor: Colors.yellow,),
        FlutterLogo(size: 50,
        textColor: Colors.red,),
      ],
    );
  }
}