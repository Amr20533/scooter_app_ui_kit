import 'package:flutter/material.dart';

class CustomWhiteText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const CustomWhiteText({super.key,
    required this.text,
    this.fontSize = 28.0,
    this.fontWeight = FontWeight.w900,
    this.color = Colors.white,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Mulish',
      ),
      textAlign: textAlign,
    );
  }
}
