import 'package:algoriza_task1_ui/component/matrial_button.dart';
import 'package:algoriza_task1_ui/component/text_button.dart';
import 'package:algoriza_task1_ui/models/pageview_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    int currentIndex = 0;

    final List<Data> myData = [
      Data(
          iconUrl: 'assets/images/icon.png',
          title: 'Always Keep Your Body in a good Shape',
          imageUrl: 'assets/images/Stretch-pana.png',
          description:
              'we are proud of you to just thinking of changing your self great step keep going '),
      Data(
          iconUrl: 'assets/images/icon.png',
          title: 'Relaxation Will Give You Mental health',
          imageUrl: 'assets/images/Stretch-bro.png',
          description:
              'we will keep you trace your mental health it is our jop'),
      Data(
          iconUrl: 'assets/images/icon.png',
          title: 'AnyWhere AnyTime You Can Do It',
          imageUrl: 'assets/images/Stretch-amico.png',
          description:
              'it would take you five minutes every single day not more for a good fit body and clear mind'),
    ];
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(myData[index].iconUrl),
              Expanded(child: Image.asset(myData[index].imageUrl)),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      myData[index].title,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      myData[index].description,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: myData.length,
                    effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey, activeDotColor: Colors.teal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MYMaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');

                      },
                      title: ' Get Started',
                      color: Colors.teal,
                      height: 50.0),
                  MyTextButton(
                      leading: "Don't have an account",
                      tail: "Sign Up",
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/register');
                      }),
                ],
              ))
            ],
          ),
        );
      },
      controller: controller,
      onPageChanged: (newIndex) {
        setState(() {
          currentIndex = newIndex;
        });
      },
      itemCount: myData.length,
    );
  }
}
