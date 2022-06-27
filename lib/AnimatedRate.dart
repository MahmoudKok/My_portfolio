// ignore: file_names
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:my_portfile2/Mobile/Common.dart';

class AnimatedRate extends StatelessWidget {
  const AnimatedRate({Key? key, required this.percentage, required this.label})
      : super(key: key);
  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: const Duration(seconds: 2),
      builder: (context, double value, child) => LiquidLinearProgressIndicator(
        value: value / 100, // Defaults to 0.5.
        valueColor: const AlwaysStoppedAnimation(Color.fromARGB(
            255, 30, 233, 165)), // Defaults to the current Theme's accentColor.
        backgroundColor: Colors.white,
        // Defaults to the current Theme's backgroundColor.
        borderColor: const Color.fromARGB(255, 15, 15, 15),
        borderWidth: 1,
        borderRadius: 15,
        direction: Axis
            .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
        center: Text(
          (value).toInt().toString() + "%",
          style: BoldBlack(25),
        ),
      ),
    );
  }
}
