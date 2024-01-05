import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/intropage/introPage.dart';
import 'package:flutter_application_2/pages/intropage/intropage_2.dart';
import 'package:flutter_application_2/pages/intropage/intropage_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import "../pages/homepage.dart";

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  // controller to keep track which page we are on rn
  final PageController _controller = PageController();
  bool lastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) => {
            setState(() {
              lastPage = (index == 2);
            })
          },
          controller: _controller,
          children: const [
            introPage1(), // seprate files for each pages
            introPage2(),
            introPage3(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                    onTap: () => {_controller.jumpToPage(2)},
                    child: const Text("skip")),

                // smooth indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                // next or done
                lastPage
                    ? GestureDetector(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Homepage();
                          }))
                        },
                        child: Text("done"),
                      )
                    : GestureDetector(
                        onTap: () => {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn)
                            },
                        child: Text("next")),
              ],
            ))
      ],
    ));
  }
}
