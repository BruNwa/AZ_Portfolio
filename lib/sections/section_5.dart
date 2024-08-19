import 'package:flutter/material.dart';
import '../../const/themecolors.dart';
import '../widgets/socialiconbutton.dart';

class footer extends StatelessWidget {
  final Size size;
  const footer({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: size.width * 0.7,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.005, vertical: size.height * 0.004),
            decoration: const BoxDecoration(
              color: AppColors.valhalla,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Text(
              'Contacts',
              style:
                  TextStyle(fontFamily: 'Poppins', color: AppColors.paleSlate),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          const Text(
            'Reach out to me on one of my social media channels:',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Socialiconbutton_1(size: size),
          SizedBox(
            height: size.height * 0.035,
          ),
          const Text(
            'Made With Love ❤️ And Creativity.',
            style: TextStyle(
                color: Colors.white60,
                fontFamily: 'Poppins',
                fontSize: 13,
                fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}

class Mobilefooter extends StatelessWidget {
  final Size size;
  const Mobilefooter({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: size.width * 0.7,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.005, vertical: size.height * 0.004),
            decoration: const BoxDecoration(
              color: AppColors.valhalla,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Text(
              'Contacts',
              style:
                  TextStyle(fontFamily: 'Poppins', color: AppColors.paleSlate),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          const Text('Reach out to me on one of my social media channels:',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Poppins', fontSize: 15),
              textAlign: TextAlign.center),
          SizedBox(
            height: size.height * 0.035,
          ),
          Socialiconbutton_2(size: size),
          SizedBox(
            height: size.height * 0.035,
          ),
          const Text(
            'Made With Love ❤️ And Creativity.',
            style: TextStyle(
                color: Colors.white60,
                fontFamily: 'Poppins',
                fontSize: 13,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: size.height * 0.09,
          ),
        ],
      ),
    );
  }
}
