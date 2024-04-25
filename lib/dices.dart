import 'package:dices/dice_roller.dart';
import 'package:dices/gradient_container.dart';
import 'package:dices/history_screen.dart';
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

  void changeScreen() {
    setState(() {
      if (activeScreen == 'start-screen') {
        activeScreen = 'history';
      } else {
        activeScreen = 'start-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = const DiceRoller();
    if (activeScreen == 'history') {
      screenWidget = const HistoryScreen();
    }
    return 
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            GradientContainer(
              colors: const [
                Color.fromARGB(255, 7, 8, 9),
                Color.fromARGB(255, 252, 79, 5)
              ],
              child: screenWidget,
            ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
            onPressed: changeScreen,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 224, 198, 119),
              textStyle: const TextStyle(fontSize: 20)
            ),
            child: Text(activeScreen == 'start-screen' ? 'історія' : 'go back'),
              ),),
            )
          ]
        ),
      ),
    );
  }
}