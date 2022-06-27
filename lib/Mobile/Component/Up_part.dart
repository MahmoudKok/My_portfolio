// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:my_portfile2/Mobile/Common.dart';

class UpPart extends StatefulWidget {
  const UpPart({Key? key, required this.hi, required this.wi})
      : super(key: key);

  final double wi;
  final double hi;

  @override
  State<UpPart> createState() => _UpPartState();
}

class _UpPartState extends State<UpPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.hi * .4,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 114, 187, 247),
                Color.fromARGB(255, 114, 189, 249),
                Color.fromARGB(255, 114, 193, 253),
                Color.fromARGB(255, 114, 200, 255),
                Color(0xFF434343)
              ])),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi , i\'m',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: widget.hi * .001,
                  ),
                  Container(
                    height: widget.hi * .05,
                    width: widget.wi * .55,
                    child: Marquee(
                      text: 'Mahmoud kokeh',
                      style: BoldWhite(20),
                      scrollAxis: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      blankSpace: 37.0,
                      velocity: 100.0,
                      pauseAfterRound: const Duration(microseconds: 1500),
                      startPadding: 10.0,
                      accelerationDuration: const Duration(microseconds: 1500),
                      accelerationCurve: Curves.bounceIn,
                      decelerationDuration: const Duration(milliseconds: 1500),
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                  SizedBox(
                    height: widget.hi * .05,
                  ),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: widget.hi * .02,
                  ),
                  const Text(
                    'Contestant\nProgramming',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 32),
              child: Container(
                height: widget.hi * .35,
                width: widget.wi * .4,
                color: Colors.redAccent,
                child: Image.asset(
                  'assets/images/Me.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
