import 'package:flutter/material.dart';

class ShowTitle extends StatelessWidget {
  final String? text;
  final TextStyle textStyle;
  const ShowTitle({ Key? key, required this.text, required this.textStyle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!, style: textStyle);
  }
}