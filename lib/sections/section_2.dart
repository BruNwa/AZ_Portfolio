import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../const/themecolors.dart';
import '../widgets/description.dart';

class Description extends StatelessWidget {
  final Size size;
  const Description({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black45,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.paleSlate),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Text(
                'About Me',
                style: TextStyle(
                  color: AppColors.paleSlate,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: size.height * 0.8,
                  width: size.width * 0.45,
                  margin: EdgeInsets.only(top: size.height * 0.18),
                  child: DescriptionPic(size: size)),
              Column(
                children: [
                  SizedBox(height: size.height * 0.08),
                  Column(
                    children: [
                      Row(
                        children: [
                          GradientText(
                            "Anwar Zaim",
                            colors: const [
                              AppColors.studio,
                              AppColors.paleSlate
                            ],
                            style: TextStyle(
                                fontSize: size.width * 0.018,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: size.width * 0.28,
                          ),
                          Image.asset(
                            'assets/images/logo/logo_white.png',
                            height: 70,
                            width: 70,
                          )
                        ],
                      ),
                      SizedBox(height: size.height * 0.08),
                      HoverContainer(
                        padding: const EdgeInsets.all(15),
                        width: size.width * 0.45,
                        hoverDecoration: BoxDecoration(
                            border: Border.all(color: AppColors.rouge),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white60,
                              fontFamily: 'Poppins',
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      '  Hello! I\'m Anwar Zaim, originally from Morocco and currently pursuing my Master\'s degree in Poland. My journey in technology began with a Specialist Technician diploma in Computer Networks and Telecommunications, followed by a Professional Bachelor\'s degree in System, Networks, and Security Engineering.\n\n'),
                              TextSpan(
                                  text:
                                      ' My fascination with technology led me to explore Python, a versatile language that opens up countless possibilities in software development. I\'ve been dedicating myself to learning its wide range of applications, from web development to data analysis and automation. My background includes deploying apps, administrating servers, and troubleshooting both Windows and Linux bugs, providing me with a solid foundation in understanding and solving complex technical challenges. \n\n '),
                              TextSpan(
                                  text:
                                      '  Python\'s flexibility has allowed me to merge my experience in system administration with practical software development. It\'s more than just a language for me; it\'s a powerful tool to bring ideas to life, streamline processes, and solve real-world problems. While my focus has been on Python, I\'m also passionate about mobile development and have acquired some skills in Flutter, allowing me to explore the exciting world of cross-platform mobile apps.\n\n '),
                              TextSpan(
                                  text:
                                      ' As I continue to grow my expertise in Python and explore its vast ecosystem, I am eager to contribute my skills to impactful projects and collaborate with like-minded professionals who share my enthusiasm for innovation. Let\'s connect and explore how we can create something remarkable together.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SmallDescription extends StatelessWidget {
  final Size size;
  const SmallDescription({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black45,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.paleSlate),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Text(
                'About Me',
                style: TextStyle(
                  color: AppColors.paleSlate,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: size.height * 0.72,
                  width: size.width * 0.7,
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: DescriptionPic(size: size)),
              Column(
                children: [
                  SizedBox(height: size.height * 0.08),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GradientText(
                              "Anwar Zaim",
                              colors: const [
                                AppColors.studio,
                                AppColors.paleSlate
                              ],
                              style: const TextStyle(
                                  fontSize: 32,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'assets/images/logo/logo_white.png',
                              height: 70,
                              width: 70,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.08),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: HoverContainer(
                          padding: const EdgeInsets.all(15),
                          hoverDecoration: BoxDecoration(
                              border: Border.all(color: AppColors.rouge),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white60,
                                fontFamily: 'Poppins',
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        '  Hello! I\'m Anwar Zaim, originally from Morocco and currently pursuing my Master\'s degree in Poland. My journey in technology began with a Specialist Technician diploma in Computer Networks and Telecommunications, followed by a Professional Bachelor\'s degree in System, Networks, and Security Engineering.\n\n'),
                                TextSpan(
                                    text:
                                        ' My fascination with technology led me to explore Python, a versatile language that opens up countless possibilities in software development. I\'ve been dedicating myself to learning its wide range of applications, from web development to data analysis and automation. My background includes deploying apps, administrating servers, and troubleshooting both Windows and Linux bugs, providing me with a solid foundation in understanding and solving complex technical challenges. \n\n '),
                                TextSpan(
                                    text:
                                        '  Python\'s flexibility has allowed me to merge my experience in system administration with practical software development. It\'s more than just a language for me; it\'s a powerful tool to bring ideas to life, streamline processes, and solve real-world problems. While my focus has been on Python, I\'m also passionate about mobile development and have acquired some skills in Flutter, allowing me to explore the exciting world of cross-platform mobile apps.\n\n '),
                                TextSpan(
                                    text:
                                        ' As I continue to grow my expertise in Python and explore its vast ecosystem, I am eager to contribute my skills to impactful projects and collaborate with like-minded professionals who share my enthusiasm for innovation. Let\'s connect and explore how we can create something remarkable together.'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
