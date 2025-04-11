import 'package:flutter/material.dart';

TextStyle h1Style = TextStyle(
  fontFamily: 'PTSerif',
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

TextStyle pStyle = TextStyle(
  fontFamily: 'PTSerif',
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: Colors.black.withAlpha(127),
);

const double stdPageSpacing = 22;

// tables
TextStyle t1Style = TextStyle(
  fontFamily: 'PTSerif',
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.black.withAlpha((255 * 0.8).ceil()),
);

TextStyle tStyle = TextStyle(
  fontFamily: 'PTSerif',
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: Colors.black.withAlpha((255 * 0.8).ceil()),
);

Color tColor = Color.fromARGB(255,59,59,39);

TextStyle tPaleStyle = TextStyle(
  fontFamily: 'PTSerif',
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: tColor.withAlpha((255 * 0.2).ceil()),
);
