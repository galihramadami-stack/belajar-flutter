import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Container(width: 50, color: Colors.blue,),

      Expanded(
        child: Container(
          height: 80,
          color: Colors.green,
        ),
      ),

      Expanded(
        child: Container(
          width: 80,
          color: const Color.fromARGB(255, 255, 94, 0),
          ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          height: 80,
          color: const Color.fromARGB(255, 255, 94, 0),
        ),

      ),
      ]
    );
  }
}