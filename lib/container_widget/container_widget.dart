import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.blue, width: 2),
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.blueAccent, Colors.blueAccent],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hello"),
            Text("hello"),
            SizedBox(height: 9),
            Text("suhmid"),
          ],
        ),
      ),
    );
  }
}