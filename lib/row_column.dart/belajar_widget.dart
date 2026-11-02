import 'package:flutter/material.dart';

class LatihanLayoutDua extends StatelessWidget {
  const LatihanLayoutDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(right: 16, left: 16),
      color: const Color.fromARGB(255, 14, 1, 187),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "INI JUDUL",
              style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 40,
            width: 520,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "INI JUDUL",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 220,
                color: const Color.fromARGB(255, 248, 248, 248),
              ),
              Container(
                height: 160,
                width: 220,
                color: const Color.fromARGB(255, 249, 248, 246),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 220,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              Container(
                height: 160,
                width: 220,
                color: const Color.fromARGB(255, 255, 255, 254),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 220,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              Container(
                height: 160,
                width: 220,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
