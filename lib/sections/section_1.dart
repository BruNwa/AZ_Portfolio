import 'package:Portfolio/widgets/socialiconbutton.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../widgets/animatedhead_1.dart';

class HeaderTextWidget_1 extends StatelessWidget {
  final Size size;
  const HeaderTextWidget_1({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.07, vertical: size.height * 0.15),
      // decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            AnimatedHead_1(size: size),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white60)),
                  margin: EdgeInsets.only(
                      right: size.width * 0.32, top: size.height * 0.05),
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.007,
                      horizontal: size.width * 0.008),
                  child: Text(
                    "I am Anwar",
                    style: TextStyle(
                        fontSize: size.width * 0.01,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                  right: size.width * 0.5, top: size.height * 0.6),
              child: GradientText(
                "  Merging Python Proficiency with Innovative\n Problem-Solving: Junior Developer Eager\nto Tackle New Challenges.",
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 17),
                textAlign: TextAlign.justify,
                colors: const [
                  Color(0xffcacff9),
                  Color(0xffbb77ed),
                  Color(0xffefb7ea)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.6, left: size.width * 0.5),
              width: size.width * 0.45,
              child: Socialiconbutton_2(size: size),
            )
          ],
        ),
      ]),
    );
  }
}

class SmallHeaderTextWidget_1 extends StatelessWidget {
  final Size size;
  const SmallHeaderTextWidget_1({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.07, vertical: size.height * 0.15),
      // decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            AnimatedHead_1(size: size),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white60)),
                  margin: EdgeInsets.only(
                      right: size.width * 0.38, top: size.height * 0.05),
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.007,
                      horizontal: size.width * 0.008),
                  child: const Text(
                    "I am Anwar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GradientText(
              "  Merging Python Proficiency with Innovative\n Problem-Solving: Junior Developer Eager\nto Tackle New Challenges.",
              style: const TextStyle(fontFamily: 'Poppins', fontSize: 17),
              textAlign: TextAlign.justify,
              colors: const [
                Color(0xffcacff9),
                Color(0xffbb77ed),
                Color(0xffefb7ea)
              ],
            ),
            Socialiconbutton_2(size: size)
          ],
        ),
      ]),
    );
  }
}

class MobileHeaderTextWidget_1 extends StatelessWidget {
  final Size size;
  const MobileHeaderTextWidget_1({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: size.height * 0.01,
          right: size.width * 0.01,
          left: size.width * 0.01),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            AnimatedHead_1(size: size),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white60)),
                  margin: EdgeInsets.only(
                      right: size.width * 0.38, top: size.height * 0.23),
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.007,
                      horizontal: size.width * 0.008),
                  child: const Text(
                    "I am Anwar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: GradientText(
                "  Merging Python Proficiency with Innovative Problem-Solving: Junior Developer Eager to Tackle New Challenges.",
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 17),
                textAlign: TextAlign.justify,
                colors: const [
                  Color(0xffcacff9),
                  Color(0xffbb77ed),
                  Color(0xffefb7ea)
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              width: size.width * 0.45,
              child: Socialiconbutton_2(size: size),
            )
          ],
        ),
      ]),
    );
  }
}
