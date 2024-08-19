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
import 'dart:math' as math;

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  Timer? _scrollTimer;
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _sectionKeys = List.generate(5, (_) => GlobalKey());
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_debouncedScrollListener);
  }

  @override
  void dispose() {
    _scrollTimer?.cancel();
    _scrollController.removeListener(_debouncedScrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _debouncedScrollListener() {
    if (_scrollTimer?.isActive ?? false) _scrollTimer!.cancel();
    _scrollTimer = Timer(const Duration(milliseconds: 100), () {
      _updateCurrentIndex();
    });
  }

  void _scrollListener() {
    _updateCurrentIndex();
  }

  void _updateCurrentIndex() {
    if (!mounted) return;

    final scrollPosition = _scrollController.offset;
    final viewportHeight = _scrollController.position.viewportDimension;
    final viewportBottom = scrollPosition + viewportHeight;

    for (int i = 0; i < _sectionKeys.length; i++) {
      final sectionContext = _sectionKeys[i].currentContext;
      if (sectionContext != null) {
        final renderBox = sectionContext.findRenderObject() as RenderBox;
        final sectionTop = renderBox.localToGlobal(Offset.zero).dy;
        final sectionHeight = renderBox.size.height;
        final sectionBottom = sectionTop + sectionHeight;

        // Calculate the visible portion of the section
        final visibleTop = math.max(sectionTop, scrollPosition);
        final visibleBottom = math.min(sectionBottom, viewportBottom);
        final visibleHeight = visibleBottom - visibleTop;

        // Check if at least 50% of the section is visible
        if (visibleHeight > sectionHeight * 0.5) {
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
          duration: Duration(milliseconds: 500),
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
          Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MobileHeaderTextWidget_1(key: _sectionKeys[0], size: size),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: size.height * 0.2,
                    child: MobileCarouselSlide(
                        autoScrollDuration: Duration(seconds: 3), size: size),
                  ),
                  SmallDescription(key: _sectionKeys[1], size: size),
                  SizedBox(height: size.height * 0.05),
                  Projects(key: _sectionKeys[2], size: size),
                  Container(
                      decoration: const BoxDecoration(color: Colors.black45),
                      child: Mobilecareer(key: _sectionKeys[3], size: size)),
                  Mobilefooter(key: _sectionKeys[4], size: size),
                ],
              ),
            ),
          ),
          MobileHomeMenu(
            size: size,
            onSectionTap: _scrollToSection,
          ),
        ],
      ),
    );
  }
}
