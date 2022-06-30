import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton(
      {Key? key,
      required this.leading,
      required this.tail,
      required this.onPressed})
      : super(key: key);
  final String leading;
  final String tail;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leading,
          style: const TextStyle(fontSize: 18),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              tail,
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            ))
      ],
    );
  }
}
