import 'package:flutter/material.dart';

class LayoutEempat extends StatelessWidget {
  const LayoutEempat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(height: 140, color: Colors.amberAccent),
            const Positioned(
              bottom: 20,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 36,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
