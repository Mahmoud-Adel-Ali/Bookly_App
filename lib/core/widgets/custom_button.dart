import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadiusDirectional.circular(16),
        ),
      ),
      child: Text(
        text,
        style: Styles.textSyle18.copyWith(
            color: textColor, fontWeight: FontWeight.w900, fontSize: fontSize),
      ),
    );
  }
}
