import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  GoogleButton(
      {Key? key,
      required this.onPressed,
      this.radius = 20,
      required this.height})
      : super(key: key);
  final Function() onPressed;
  final double height;
  double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(radius)),
      width: double.infinity,
      child: MaterialButton(
        shape: BeveledRectangleBorder(
            side:const  BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(4)),

        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: IconButton(
                onPressed: (){},
                icon: Image.asset("assets/images/google.ico")),
          ),
          const Text(
            "Sign with by google",
            style: TextStyle(
                fontSize: 18,
                color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        ],
      ),onPressed: (){},)
    );
  }
}
