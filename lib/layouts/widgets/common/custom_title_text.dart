import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const CustomTitleText({super.key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.w900,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
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
