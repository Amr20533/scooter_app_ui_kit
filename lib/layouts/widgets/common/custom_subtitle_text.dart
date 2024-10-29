import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';

class CustomSubTitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  const CustomSubTitleText({super.key,
    required this.text,
    this.fontSize = 10,
    this.fontWeight = FontWeight.w400,
    this.color = kLightTextColor,
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
        height: 2
      ),
      textAlign: textAlign,

    );
  }
}
