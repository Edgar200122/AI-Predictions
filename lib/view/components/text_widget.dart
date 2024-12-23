import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.center,
    this.fontFamily = 'Inter',
  });
  final String text;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          overflow: TextOverflow.ellipsis),
    );
  }
}
