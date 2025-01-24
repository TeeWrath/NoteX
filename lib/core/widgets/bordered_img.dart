import 'package:flutter/material.dart';

class BorderedImg extends StatelessWidget {
  const BorderedImg(
      {super.key,
      this.height,
      this.width,
      required this.color,
      this.strokeWidth,
      required this.image});
  final double? height;
  final double? width;
  final Color color;
  final double? strokeWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100, // Adjust this to set the overall size
      height: height ?? 100, // Adjust this to set the overall size
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color, // Border color
          width: strokeWidth ?? 4, // Border thickness
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          image,
          fit: BoxFit.cover, // Ensures image scales proportionally
        ),
      ),
    );
  }
}
