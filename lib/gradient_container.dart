import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors, required this.child});

  final List<Color> colors;
  final Widget child;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: child),
    );
  }
}
