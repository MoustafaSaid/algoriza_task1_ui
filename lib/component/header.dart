import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),

        const Text(
          "Welcome to Fitness Daily",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 20,),

        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            const Spacer(),
            const InkWell(
              child:  Text(
                "Help",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            const  SizedBox(width: 6,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                

              ),
                child: const Icon(
              Icons.question_mark,
                  color: Colors.white,
                  size: 18,
            ))
          ],
        )
      ],
    );
  }
}
