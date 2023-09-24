import 'package:flutter/material.dart';


class ResponsiveButton extends StatelessWidget {
  final Widget widget;
  final Color color;
  final double height;
  final double radius;
  final double width;
    final double padding;
    final void Function() function;
    
   const ResponsiveButton({
    super.key,
    required this.widget,
    required this.color,
    required this.height,
    required this.width,
    required this.radius,  required this.padding, required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(padding),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          
        ),
        child: Center(child: widget),
      ),
    );
  }
}
