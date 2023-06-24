import 'package:portafolio/ui/theme.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final FontWeight fontWeight;
  final bool isTextUpperCase;
  final TextAlign textAlign;
  final double fontSize;
  final Color color;
  final String text;
  final String fontFamily;
  const TextWidget({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.start,
    this.fontSize = 14,
    this.color = black,
    this.isTextUpperCase = false,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = 'Futura',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      isTextUpperCase ? text.toUpperCase() : text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily
      ),
    );
  }
}
