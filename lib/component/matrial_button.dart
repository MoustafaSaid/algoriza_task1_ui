import 'package:flutter/material.dart';

class MYMaterialButton extends StatelessWidget {
   MYMaterialButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.color,
        this.radius=20,
      required this.height})
      : super(key: key);
  final Function() onPressed;
  final String title;
  final Color color;
  final double height;
  double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(radius)),
      width: double.infinity,
      child: MaterialButton(
        height: height,
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
