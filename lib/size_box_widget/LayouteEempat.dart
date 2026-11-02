import 'package:flutter/material.dart';

class Jamal extends StatelessWidget {
  const Jamal({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(height: 140, color: Colors.amberAccent,),
            Positioned(
              bottom: 20,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(backgroundColor: Colors.blueAccent, radius: 36,),
              ),
            ),
          ],
        ),
      ],
      
    );
  }
}