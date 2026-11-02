import 'package:flutter/material.dart';

class Galih extends StatelessWidget {
  const Galih({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 74, 174, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.image, size: 60, color: Colors.white,)
            ),
      Positioned(
        top: 8,
        left: 8,
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.red,
          child: Text("-20%"),
      ),
      ),
      Positioned(bottom: 8, right: 8, child: Icon(Icons.favorite_border,)),
        ],
      ),
    );
  }
}