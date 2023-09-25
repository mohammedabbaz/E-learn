import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final TextOverflow overFlow;
  final int maxLines;

    const AppText(
      {super.key,
      required this.text,
      required this.fontsize,
       this.fontWeight=FontWeight.normal,
      required this.color,
      this.overFlow = TextOverflow.clip,  this.maxLines=1});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
       
      ),
      overflow:   overFlow,
      maxLines: maxLines,
      
    );
  }
}
