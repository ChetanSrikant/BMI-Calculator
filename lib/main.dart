import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              thumbColor: Colors.pink,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              overlayColor: Color(0x29EB1555),
              inactiveTrackColor: Colors.grey),
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          appBarTheme: const AppBarTheme(color: Color(0xFF0A0E21))),
      home: InputPage(),
    );
  }
}
