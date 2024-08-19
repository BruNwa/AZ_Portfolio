import 'package:Portfolio/sections/section_1.dart';
import 'package:Portfolio/sections/section_2.dart';
import 'package:Portfolio/sections/section_3.dart';
import 'package:Portfolio/sections/section_4.dart';
import 'package:Portfolio/sections/section_5.dart';
import 'package:Portfolio/widgets/skill_carousel.dart';
import 'package:Portfolio/widgets/tabmenu.dart';
import 'package:flutter/material.dart';
import '../../const/style.dart';
import 'dart:async';

class MidLayout extends StatefulWidget {
  const MidLayout({super.key});

  @override
  State<MidLayout> createState() => _MidLayoutState();
}

class _MidLayoutState extends State<MidLayout> {
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(5, (_) => GlobalKey());
  int _currentIndex = 0;
  Timer? _scrollTimer;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_throttledScrollListener);
  }

  @override
  void dispose() {
    _scrollTimer?.cancel();
    _scrollController.removeListener(_throttledScrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _throttledScrollListener() {
    if (_scrollTimer?.isActive ?? false) return;
    _scrollTimer = Timer(const Duration(milliseconds: 100), () {
      _updateCurrentIndex();
    });
  }

  void _updateCurrentIndex() {
    if (!mounted) return;

    final scrollPosition = _scrollController.offset;
    final viewportHeight = _scrollController.position.viewportDimension;

    for (int i = 0; i < _sectionKeys.length; i++) {
      final sectionContext = _sectionKeys[i].currentContext;
      if (sectionContext != null) {
        final renderBox = sectionContext.findRenderObject() as RenderBox;
        final sectionPosition = renderBox.localToGlobal(Offset.zero).dy;
        final sectionHeight = renderBox.size.height;

        // Adjusted condition to ensure that the section is fully within the viewport
        if (scrollPosition + viewportHeight / 2 >= sectionPosition &&
            scrollPosition + viewportHeight / 2 <
                sectionPosition + sectionHeight) {
          if (_currentIndex != i) {
            setState(() {
              _currentIndex = i;
            });
          }
          break;
        }
      }
    }
  }

  void _scrollToSection(int index) {
    if (index >= 0 && index < _sectionKeys.length) {
      final keyContext = _sectionKeys[index].currentContext;
      if (keyContext != null) {
        Scrollable.ensureVisible(
          keyContext,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          alignment: 0.5, // Ensure the section is centered in the viewport
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainBackground(size: size),
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Column(
                  key: _sectionKeys[0],
                  children: [
                    SmallHeaderTextWidget_1(size: size),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      height: size.height * 0.2,
                      child: CarouselSlide(
                          autoScrollDuration: const Duration(seconds: 3),
                          size: size),
                    ),
                  ],
                ),
                Description(key: _sectionKeys[1], size: size),
                Projects(key: _sectionKeys[2], size: size),
                MidCareer(key: _sectionKeys[3], size: size),
                footer(key: _sectionKeys[4], size: size),
              ],
            ),
          ),
          HomeMenu(
            size: size,
            onSectionTap: _scrollToSection,
          ),
        ],
      ),
    );
  }
}
