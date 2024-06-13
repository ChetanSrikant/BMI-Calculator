import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap, required this.bottomTitle});

  final VoidCallback onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(bottomTitle,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
        ),
      ),
    );
  }
}


