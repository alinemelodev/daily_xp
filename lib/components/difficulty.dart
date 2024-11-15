import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficulty;

  const Difficulty(this.difficulty, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            size: 15,
            color: (difficulty >= 1)
                ? Colors.cyan
                : Colors.cyan[100]),
        Icon(Icons.star,
            size: 15,
            color: (difficulty >= 2)
                ? Colors.cyan
                : Colors.cyan[100]),
        Icon(Icons.star,
            size: 15,
            color: (difficulty >= 3)
                ? Colors.cyan
                : Colors.cyan[100]),
        Icon(Icons.star,
            size: 15,
            color: (difficulty >= 4)
                ? Colors.cyan
                : Colors.cyan[100]),
        Icon(Icons.star,
            size: 15,
            color: (difficulty >= 5)
                ? Colors.cyan
                : Colors.cyan[100]),
      ],
    );
  }
}