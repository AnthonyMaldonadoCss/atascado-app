import 'package:flutter/material.dart';

BoxDecoration setBoxDecoration(
    Alignment beginAlignment, Alignment endAlignment, List<Color> colors) {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: beginAlignment, end: endAlignment, colors: colors));
}
