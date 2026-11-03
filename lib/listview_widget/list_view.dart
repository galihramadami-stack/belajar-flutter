import 'package:flutter/material.dart';

class Jojon extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
     children: [
      Container(
        width: 100,
        color: Colors.red,
        child: Center(child: Text("Golongan Homeless"),),
      ),
      Container(
        width: 100,
        color: Colors.amber,
        child: Center(child: Text("Golongan Busung lapar"),),
      ),
      Container(
        width: 100,
        color: const Color.fromARGB(255, 255, 152, 7),
        child: Center(child: Text("Golongan tel aviv"),),
      ),
      Container(
        width: 100,
        color: Colors.amber,
        child: Center(child: Text("Golongan Ripuh"),),
      ),
     ],
    );
  }
}