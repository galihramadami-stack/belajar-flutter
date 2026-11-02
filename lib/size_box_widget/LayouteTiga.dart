import 'package:flutter/material.dart';

class Suhmid extends StatelessWidget {
  const Suhmid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Pemasukan"),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
              height: 80,
              color: Colors.green[100],
              alignment: Alignment.center,
              child: Text("Pengeluaran")
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
              height: 60,
              color: Colors.red[100],
              alignment: Alignment.center,
              child: Text("Tabungan"),
            ),
          ),
        ],
      ),
    );
  }
}