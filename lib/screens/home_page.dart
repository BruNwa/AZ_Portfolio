import 'package:Portfolio/screens/layouts/MidLayout.dart';
import 'package:Portfolio/screens/layouts/mobilelayout.dart';
import 'package:Portfolio/screens/layouts/tabletlayout.dart';
import 'package:flutter/material.dart';
import 'layouts/desktoplayout.dart';
import 'layouts/smallLayout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1560) {
        return const DesktopLayout();
      } else if (constraints.maxWidth > 1385) {
        return const MidLayout();
      } else if (constraints.maxWidth > 900) {
        return const smallLayout();
      } else if (constraints.maxWidth > 765) {
        return const TebletLayout();
      } else
        return const MobileLayout();
    });
  }
}
