import 'package:flutter/material.dart';
import 'package:dices/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const GradientContainer(
              colors: [
                Color.fromARGB(255, 7, 8, 9),
                Color.fromARGB(255, 252, 79, 5)
              ],
            ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 173, 149, 79),
              textStyle: const TextStyle(fontSize: 20)
            ),
            child: const Text('історія'),
              ),),
            )
          ]
        ),
      ),
    ),
  );
}


