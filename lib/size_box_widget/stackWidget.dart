import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 100, height: 200, color: Colors.yellow,),
        Positioned(
          bottom: 0,
          right: 10,

          child: Icon(Icons.favorite, color: Colors.white,)
          ),
          Positioned(top: 5, left: 10, child: Text("Label"),),
          Positioned(
            right: 25,
            top: 25,
            left: 25,
            child: Container(color: Colors.red, height: 100,width: 100,),
          ),
      ],
    );
  }
}