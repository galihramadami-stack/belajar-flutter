import 'package:flutter/material.dart';

class LatihanWidget extends StatelessWidget {
  const LatihanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 5, 20, 33),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(255, 171, 146, 71),
          width: 5,
        ),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 2, 253, 232),
            const Color.fromARGB(255, 42, 230, 9),
            const Color.fromARGB(255, 182, 26, 26),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        image: DecorationImage(
          image: NetworkImage(
            'https://assets.pikiran-rakyat.com/crop/0x0:0x0/1200x675/photo/2024/07/18/2302566188.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child:  Text('GBLA saat ini masih di renovasi dikarenakan belum layak untuk pertandingan besar seperti liga dan acl )', 
        textAlign: TextAlign.center,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
      
    );
  }
}