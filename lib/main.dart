import 'package:flutter/material.dart';
import 'package:dice_app/gradient_color.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 223, 221, 20),
            Color.fromARGB(255, 153, 198, 6)),
      ),
    ),
  );
}
