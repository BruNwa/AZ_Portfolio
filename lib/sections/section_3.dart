import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../const/themecolors.dart';
import '../widgets/projects.dart';

class Projects extends StatelessWidget {
  final Size size;
  const Projects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.005, vertical: size.height * 0.004),
          decoration: const BoxDecoration(
            color: AppColors.valhalla,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Text(
            'Projects',
            style: TextStyle(fontFamily: 'Poppins', color: AppColors.paleSlate),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GradientText(
          "My Projects",
          colors: const [AppColors.studio, AppColors.paleSlate],
          style: TextStyle(
              fontSize: size.width * 0.018,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ProjectsGrid(
          size: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height),
        ),
      ],
    );
  }
}
