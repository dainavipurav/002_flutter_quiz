import 'package:flutter/material.dart';

Alignment begin = Alignment.topLeft;
Alignment end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Widget? child;

  const GradientContainer(this.color1, this.color2, {this.child, super.key});

  const GradientContainer.purple({super.key, this.child})
      : color1 = const Color.fromARGB(255, 59, 5, 68),
        color2 = const Color.fromARGB(255, 89, 3, 104);

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: begin,
          end: end,
        ),
      ),
      child: child,
    );
  }
}
