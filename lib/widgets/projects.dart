import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class ProjectsGrid extends StatelessWidget {
  final Size size;

  ProjectsGrid({super.key, required this.size});

  final List<Project> projects = [
    Project(
      title: 'AZ Control: Face and Hand Gesture Computer Control',
      description:
          'AZ Control is a Python-based computer vision project that allows users to control their computer using face and hand gestures. This application offers two main modes of operation: controlling specific actions using blinks, mouth movements, and hand gestures, or controlling the mouse using hand movements.\n\nFeatures:\n  Face and hand gesture recognition\n  Two control modes:\n  Blink, mouth, and hand gesture control\n  Mouse control using hand gestures\n  Customizable keyboard mappings for gestures\n  Optional camera feed display',
      coverUrl: 'assets/projects/computerVision.jpeg',
      coverType: CoverType.image,
      language: 'Python',
      languageLogoUrl: 'assets/images/icons/python.png',
      projectUrl: 'https://github.com/BruNwa/AZ_Control',
      gridWidth: 1.5,
      gridHeight: 2,
    ),
    Project(
      title: 'Web Portfolio',
      description: 'Responsive web dashboard using React.',
      coverUrl: 'assets/projects/portfolio.gif',
      coverType: CoverType.gif,
      language: 'Flutter',
      languageLogoUrl: 'assets/images/icons/flutter.png',
      projectUrl: 'https://project2.com',
      gridWidth: 1.5,
      gridHeight: 1.0,
    ),
    Project(
      title: 'Aim Practice Game',
      description:
          'I developed a Python game using Pygame, where players test their reflexes by clicking on randomly appearing targets before they disappear. The targets grow and shrink, and each successful click increases the score, while missed targets decrease lives. The game tracks performance metrics like time, speed, and accuracy, and displays them on an end screen.\n\nThe code is structured with classes for managing targets and the interface, making it modular and easy to extend. Key features include dynamic target generation, real-time updates, and a responsive user interface.',
      coverUrl: 'assets/projects/aimgame.gif',
      coverType: CoverType.gif,
      language: 'Python',
      languageLogoUrl: 'assets/images/icons/python.png',
      projectUrl: 'https://github.com/BruNwa/Aim-Pratice-Game',
      gridWidth: 1.5,
      gridHeight: 1,
    ),
    // Add more projects here
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.7,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: StaggeredGrid.count(
            crossAxisCount: 6,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: projects
                .map((project) => StaggeredGridTile.count(
                      crossAxisCellCount: (project.gridWidth * 2).round(),
                      mainAxisCellCount: (project.gridHeight * 2).round(),
                      child: ProjectTile(
                        project: project,
                        size: Size(size.width * 0.15 * project.gridWidth,
                            size.height * 0.15 * project.gridHeight),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class ProjectTile extends StatefulWidget {
  final Project project;
  final Size size;

  const ProjectTile({super.key, required this.project, required this.size});

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<double> _blurAnimation;
  late Animation<double> _opacityAnimation;
  VideoPlayerController? _videoController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _blurAnimation = Tween<double>(begin: 0, end: 5).animate(_controller);
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);

    if (widget.project.coverType == CoverType.video) {
      _videoController = VideoPlayerController.asset(widget.project.coverUrl)
        ..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => isHovered = true);
        _controller.forward();
        _videoController?.play();
      },
      onExit: (_) {
        setState(() => isHovered = false);
        _controller.reverse();
        _videoController?.pause();
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: isHovered ? 5 : 0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _buildCover(),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: _blurAnimation.value,
                      sigmaY: _blurAnimation.value,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(isHovered ? 0.7 : 0.3),
                      ),
                    ),
                  ),

                  Positioned(
                    top: isHovered ? 35 : null,
                    left: 0,
                    right: 0,
                    bottom: isHovered ? null : 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.project.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widget.size.width * 0.06,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          if (isHovered) const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),

                  if (isHovered)
                    Positioned(
                      top: widget.size.width * 0.3,
                      left: 0,
                      right: 0,
                      child: FadeTransition(
                        opacity: _opacityAnimation,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            widget.project.description,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: widget.size.width * 0.035,
                              fontFamily: 'Poppins',
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),

                  // Language tag in bottom right corner
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            widget.project.languageLogoUrl,
                            height: widget.size.width * 0.04,
                            width: widget.size.width * 0.04,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            widget.project.language,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widget.size.width * 0.035,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // "Click Here" tag in top left corner
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.open_in_new,
                              color: Colors.white,
                              size: widget.size.width * 0.07),
                          const SizedBox(width: 3),
                        ],
                      ),
                    ),
                  ),

                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _launchURL(widget.project.projectUrl),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCover() {
    switch (widget.project.coverType) {
      case CoverType.image:
        return Image.asset(
          widget.project.coverUrl,
          fit: BoxFit.cover,
        );
      case CoverType.video:
        return _videoController!.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoController!.value.aspectRatio,
                child: VideoPlayer(_videoController!),
              )
            : Container();
      case CoverType.gif:
        return Image.asset(
          widget.project.coverUrl,
          fit: BoxFit.cover,
        );
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

enum CoverType { image, video, gif }

class Project {
  final String title;
  final String description;
  final String coverUrl;
  final CoverType coverType;
  final String language;
  final String languageLogoUrl;
  final String projectUrl;
  final double gridWidth;
  final double gridHeight;

  Project({
    required this.title,
    required this.description,
    required this.coverUrl,
    required this.coverType,
    required this.language,
    required this.languageLogoUrl,
    required this.projectUrl,
    required this.gridWidth,
    required this.gridHeight,
  });
}
