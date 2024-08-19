import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CarouselSlide extends StatefulWidget {
  final Size size;
  final Duration autoScrollDuration;
  final int visibleImages;
  final Duration focusDuration;
  final double fadeWidth;

  const CarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 60),
      this.visibleImages = 7,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.5,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5,
            'fadeWidth must be between 0 and 0.5');

  @override
  _CarouselSlideState createState() => _CarouselSlideState();
}

class _CarouselSlideState extends State<CarouselSlide> {
  late PageController _pageController;

  final List<String> _images = [
    'assets/images/skills/12.png',
    'assets/images/skills/6.png',
    'assets/images/skills/2.png',
    'assets/images/skills/7.png',
    'assets/images/skills/11.png',
    'assets/images/skills/8.png',
    'assets/images/skills/9.png',
    'assets/images/skills/1.png',
    'assets/images/skills/4.png',
    'assets/images/skills/5.png',
    'assets/images/skills/10.png',
    'assets/images/skills/3.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleImages,
      initialPage: _images.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      await _pageController.nextPage(
        duration: widget.autoScrollDuration,
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxHeight = constraints.maxHeight;
        double maxWidth = constraints.maxWidth;

        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return ui.Gradient.linear(
              Offset.zero,
              Offset(bounds.width, 0),
              [
                Colors.white.withOpacity(0),
                Colors.white,
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              [
                0,
                widget.fadeWidth,
                1 - widget.fadeWidth,
                1,
              ],
            );
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: maxHeight,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                final imageIndex = index % _images.length;
                return Center(
                  child: SizedBox(
                    height: maxHeight * 0.8,
                    width: (maxWidth / widget.visibleImages) * 0.5,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _images[imageIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class midCarouselSlide extends StatefulWidget {
  final Size size;
  final Duration autoScrollDuration;
  final int visibleImages;
  final Duration focusDuration;
  final double fadeWidth;

  const midCarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 60),
      this.visibleImages = 6,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.5,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5,
            'fadeWidth must be between 0 and 0.5');

  @override
  _midCarouselSlideState createState() => _midCarouselSlideState();
}

class _midCarouselSlideState extends State<midCarouselSlide> {
  late PageController _pageController;

  final List<String> _images = [
    'assets/images/skills/12.png',
    'assets/images/skills/6.png',
    'assets/images/skills/2.png',
    'assets/images/skills/7.png',
    'assets/images/skills/11.png',
    'assets/images/skills/8.png',
    'assets/images/skills/9.png',
    'assets/images/skills/1.png',
    'assets/images/skills/4.png',
    'assets/images/skills/5.png',
    'assets/images/skills/10.png',
    'assets/images/skills/3.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleImages,
      initialPage: _images.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      await _pageController.nextPage(
        duration: widget.autoScrollDuration,
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxHeight = constraints.maxHeight;
        double maxWidth = constraints.maxWidth;

        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return ui.Gradient.linear(
              Offset.zero,
              Offset(bounds.width, 0),
              [
                Colors.white.withOpacity(0),
                Colors.white,
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              [
                0,
                widget.fadeWidth,
                1 - widget.fadeWidth,
                1,
              ],
            );
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: maxHeight,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                final imageIndex = index % _images.length;
                return Center(
                  child: SizedBox(
                    height: maxHeight * 0.8,
                    width: (maxWidth / widget.visibleImages) * 0.5,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _images[imageIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class smallCarouselSlide extends StatefulWidget {
  final Size size;
  final Duration autoScrollDuration;
  final int visibleImages;
  final Duration focusDuration;
  final double fadeWidth;

  const smallCarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 60),
      this.visibleImages = 4,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.5,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5,
            'fadeWidth must be between 0 and 0.5');

  @override
  _smallCarouselSlideState createState() => _smallCarouselSlideState();
}

class _smallCarouselSlideState extends State<smallCarouselSlide> {
  late PageController _pageController;

  final List<String> _images = [
    'assets/images/skills/12.png',
    'assets/images/skills/6.png',
    'assets/images/skills/2.png',
    'assets/images/skills/7.png',
    'assets/images/skills/11.png',
    'assets/images/skills/8.png',
    'assets/images/skills/9.png',
    'assets/images/skills/1.png',
    'assets/images/skills/4.png',
    'assets/images/skills/5.png',
    'assets/images/skills/10.png',
    'assets/images/skills/3.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleImages,
      initialPage: _images.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      await _pageController.nextPage(
        duration: widget.autoScrollDuration,
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxHeight = constraints.maxHeight;
        double maxWidth = constraints.maxWidth;

        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return ui.Gradient.linear(
              Offset.zero,
              Offset(bounds.width, 0),
              [
                Colors.white.withOpacity(0),
                Colors.white,
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              [
                0,
                widget.fadeWidth,
                1 - widget.fadeWidth,
                1,
              ],
            );
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: maxHeight,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                final imageIndex = index % _images.length;
                return Center(
                  child: SizedBox(
                    height: maxHeight * 0.8,
                    width: (maxWidth / widget.visibleImages) * 0.5,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _images[imageIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class TabletCarouselSlide extends StatefulWidget {
  final Size size;
  final Duration autoScrollDuration;
  final int visibleImages;
  final Duration focusDuration;
  final double fadeWidth;

  const TabletCarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 60),
      this.visibleImages = 3,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.5,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5,
            'fadeWidth must be between 0 and 0.5');

  @override
  _TabletCarouselSlideState createState() => _TabletCarouselSlideState();
}

class _TabletCarouselSlideState extends State<TabletCarouselSlide> {
  late PageController _pageController;

  final List<String> _images = [
    'assets/images/skills/12.png',
    'assets/images/skills/6.png',
    'assets/images/skills/2.png',
    'assets/images/skills/7.png',
    'assets/images/skills/11.png',
    'assets/images/skills/8.png',
    'assets/images/skills/9.png',
    'assets/images/skills/1.png',
    'assets/images/skills/4.png',
    'assets/images/skills/5.png',
    'assets/images/skills/10.png',
    'assets/images/skills/3.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleImages,
      initialPage: _images.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      await _pageController.nextPage(
        duration: widget.autoScrollDuration,
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxHeight = constraints.maxHeight;
        double maxWidth = constraints.maxWidth;

        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return ui.Gradient.linear(
              Offset.zero,
              Offset(bounds.width, 0),
              [
                Colors.white.withOpacity(0),
                Colors.white,
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              [
                0,
                widget.fadeWidth,
                1 - widget.fadeWidth,
                1,
              ],
            );
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: maxHeight,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                final imageIndex = index % _images.length;
                return Center(
                  child: SizedBox(
                    height: maxHeight * 0.8,
                    width: (maxWidth / widget.visibleImages) * 0.5,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _images[imageIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class MobileCarouselSlide extends StatefulWidget {
  final Size size;
  final Duration autoScrollDuration;
  final int visibleImages;
  final Duration focusDuration;
  final double fadeWidth;

  const MobileCarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 60),
      this.visibleImages = 2,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.5,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5,
            'fadeWidth must be between 0 and 0.5');

  @override
  _MobileCarouselSlideState createState() => _MobileCarouselSlideState();
}

class _MobileCarouselSlideState extends State<MobileCarouselSlide> {
  late PageController _pageController;

  final List<String> _images = [
    'assets/images/skills/12.png',
    'assets/images/skills/6.png',
    'assets/images/skills/2.png',
    'assets/images/skills/7.png',
    'assets/images/skills/11.png',
    'assets/images/skills/8.png',
    'assets/images/skills/9.png',
    'assets/images/skills/1.png',
    'assets/images/skills/4.png',
    'assets/images/skills/5.png',
    'assets/images/skills/10.png',
    'assets/images/skills/3.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleImages,
      initialPage: _images.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      await _pageController.nextPage(
        duration: widget.autoScrollDuration,
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxHeight = constraints.maxHeight;
        double maxWidth = constraints.maxWidth;

        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return ui.Gradient.linear(
              Offset.zero,
              Offset(bounds.width, 0),
              [
                Colors.white.withOpacity(0),
                Colors.white,
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              [
                0,
                widget.fadeWidth,
                1 - widget.fadeWidth,
                1,
              ],
            );
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: maxHeight,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                final imageIndex = index % _images.length;
                return Center(
                  child: SizedBox(
                    height: maxHeight * 0.8,
                    width: (maxWidth / widget.visibleImages) * 0.5,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _images[imageIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
