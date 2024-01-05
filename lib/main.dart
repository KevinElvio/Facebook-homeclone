import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'screen/homepage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
