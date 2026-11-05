import 'package:flutter/material.dart';

class LayoutSatu extends StatelessWidget {
  const LayoutSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 249, 251),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 6)],
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBvLm-LxztAg3yNSGOF-xiDIo8M6DadxrXz1Y1IqDj0w&s=10',
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Muhamad Galih Ramadani"),
                  SizedBox(height: 4),
                  Text("XII RPL 3"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
