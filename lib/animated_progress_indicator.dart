import 'package:flutter/material.dart';

class AnimatedCircularProgressIndacator extends StatelessWidget {
  const AnimatedCircularProgressIndacator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: const Duration(seconds: 5),
            builder: (context, double value, child) => Stack(
              //fit: StackFit.expand,
              children: [
                LinearProgressIndicator(
                  value: value,
                  color: Colors.green,
                  backgroundColor: const Color.fromARGB(255, 58, 58, 58),
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 360 / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.precentage,
    required this.label,
  }) : super(key: key);

  final double precentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 360 / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: precentage),
        duration: const Duration(seconds: 5),
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                )
              ],
            ),
            SizedBox(height: 360 / 2),
            LinearProgressIndicator(
              value: value,
              color: Colors.green,
              backgroundColor: Color.fromARGB(255, 58, 58, 58),
            ),
          ],
        ),
      ),
    );
  }
}
