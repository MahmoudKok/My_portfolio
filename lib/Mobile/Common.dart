// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TextStyle MainText() {
  // ignore: prefer_const_constructors
  return TextStyle(
    color: Colors.white60,
    fontSize: 25,
  );
}

// ignore: non_constant_identifier_names
TextStyle BoldWhite(double fontSiz) {
  return TextStyle(
    fontSize: fontSiz,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}

// ignore: non_constant_identifier_names
TextStyle BoldBlack(double fontSize) {
  return TextStyle(
    fontSize: fontSize,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
}

// ignore: non_constant_identifier_names
BorderRadius Cborder(double x) => BorderRadius.circular(x);
