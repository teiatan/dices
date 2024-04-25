import 'package:dices/gradient_container.dart';
import 'package:flutter/material.dart';

class Dices extends StatefulWidget {
  const Dices({ super.key });

  @override
  State<StatefulWidget> createState() {
    return _DicesState();
  }
}

class _DicesState extends State<Dices> {
  String activeScreen = 'start-screen';

  @override
  Widget build(BuildContext context) {
    return 
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
    );
  }
}