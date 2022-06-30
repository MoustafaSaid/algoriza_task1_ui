import 'package:algoriza_task1_ui/component/pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
        // preferredSize: Size(40.0, 30.0),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(

                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');

                  },
                    style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)
                  ,

    ),
                      backgroundColor: Colors.purple[50]

                ),
                  child: const Text(
                    "Skip",
                    style:  TextStyle(
                        fontSize: 18,
                        color: Colors.black),
                  )),
              ],
            ),
            const SizedBox(width: 15.0,)

          ],
        ),

      body: const MyPageView(),
    );
  }
}
