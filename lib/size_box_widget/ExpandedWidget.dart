import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: Colors.blue),
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
      ],
    );
  }
}
