import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

class MainBackground extends StatelessWidget {
  final Size size;
  const MainBackground({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const RiveAnimation.asset(
          "assets/rive/bg.riv",
          fit: BoxFit.cover,
        ),
        Positioned.fill(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: const SizedBox(),
        )),
      ],
    );
  }
}
