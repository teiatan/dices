import 'package:flutter/material.dart';
import 'package:dices/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 7, 8, 9),
            Color.fromARGB(255, 252, 79, 5)
          ],
        ),
      ),
    ),
  );
}
