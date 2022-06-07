import 'package:flutter/material.dart';

class UpPart extends StatefulWidget {
  UpPart({Key? key}) : super(key: key);

  @override
  State<UpPart> createState() => _UpPartState();
}

class _UpPartState extends State<UpPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.amber,
    );
  }
}
