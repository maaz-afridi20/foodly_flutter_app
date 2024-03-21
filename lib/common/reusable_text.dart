import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key, required this.text, this.style});
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: style, maxLines: 1, softWrap: false, textAlign: TextAlign.left);
  }
}
