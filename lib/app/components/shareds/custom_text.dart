import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final int maxLines;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Color textColor;
  final FontStyle fontStyle;
  final FontWeight fontWeight;

  CustomText(
      {this.text,
      this.fontSize,
      this.fontStyle,
      this.fontWeight,
      this.maxLines,
      this.textAlign,
      this.textColor,
      this.textDirection});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
        color: textColor,
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
      ),
    );
  }
}
