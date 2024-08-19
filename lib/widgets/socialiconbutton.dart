import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../const/themecolors.dart';

class Socialiconbutton_1 extends StatelessWidget {
  final Size size;

  const Socialiconbutton_1({super.key, required this.size});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.studio),
          ),
          height: 50,
          width: 250,
          child: MaterialButton(
            onPressed: () {
              _launchURL('https://drive.google.com/file/d/18PS7WDa3AMZ76bdNfl-I2QhY9mPVePIT/view');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Download CV ",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.download,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 25),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.studio.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                  hoverColor: AppColors.paleSlate,
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/anwar-zaim');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: AppColors.studio,
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.studio.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                  hoverColor: AppColors.paleSlate,
                  onPressed: () {
                    _launchURL('https://github.com/BruNwa');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: AppColors.studio,
                    size: 27,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.studio.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                  hoverColor: AppColors.paleSlate,
                  onPressed: () {
                    _launchURL('mailto:anwarzaim27@gmail.com');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: AppColors.studio,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Socialiconbutton_2 extends StatelessWidget {
  final Size size;

  const Socialiconbutton_2({super.key, required this.size});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.studio),
          ),
          height: 50,
          width: 250,
          child: MaterialButton(
            onPressed: () {
              _launchURL('https://drive.google.com/file/d/18PS7WDa3AMZ76bdNfl-I2QhY9mPVePIT/view');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Download CV ",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.download,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.studio.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                  hoverColor: AppColors.paleSlate,
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/anwar-zaim');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: AppColors.studio,
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.studio.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                  hoverColor: AppColors.paleSlate,
                  onPressed: () {
                    _launchURL('https://github.com/BruNwa');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: AppColors.studio,
                    size: 27,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.studio.withOpacity(0.5),
                ),
              ),
              child: Center(
                child: IconButton(
                  hoverColor: AppColors.paleSlate,
                  onPressed: () {
                    _launchURL('mailto:anwarzaim27@gmail.com');
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: AppColors.studio,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
