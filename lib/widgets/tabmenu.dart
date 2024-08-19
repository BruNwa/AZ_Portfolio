import 'package:flutter/material.dart';
import '../../const/themecolors.dart';

class HomeMenu extends StatefulWidget {
  final Size size;
  final Function(int) onSectionTap;

  const HomeMenu({super.key, required this.size, required this.onSectionTap});

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<String> sectionNames = [
    'Home',
    'About',
    'Projects',
    'Career',
    'Contacts'
  ];

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 800,
          height: 60.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xFFedf2fb).withOpacity(0.8),
              const Color(0xFFe2eafc).withOpacity(0.8),
              const Color(0xFFd7e3fc).withOpacity(0.8),
              const Color(0xFFccdbfd).withOpacity(0.8),
              const Color(0xFFc1d3fe).withOpacity(0.8),
              const Color(0xFFb6ccfe).withOpacity(0.8),
              const Color(0xFFabc4ff).withOpacity(0.8)
            ]),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              tabBarTheme: const TabBarTheme(
                dividerColor: Colors.transparent,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                TabBar(
                  controller: tabController,
                  indicator: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  tabs: List.generate(
                    5,
                    (index) => GestureDetector(
                      onTap: () {
                        widget.onSectionTap(index);
                      },
                      child: HoverButton(
                        label: sectionNames[index],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  child: GestureDetector(
                    onTap: () {
                      widget.onSectionTap(0);
                    },
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo/logo_white.png',
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MobileHomeMenu extends StatefulWidget {
  final Size size;
  final Function(int) onSectionTap;

  const MobileHomeMenu(
      {super.key, required this.size, required this.onSectionTap});

  @override
  _MobileHomeMenuState createState() => _MobileHomeMenuState();
}

class _MobileHomeMenuState extends State<MobileHomeMenu>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<bool> isLogoVisible = [true, true, true, true, true];

  List<String> sectionLogos = [
    'assets/images/menu/home.png',
    'assets/images/menu/about.png',
    'assets/images/menu/project.png',
    'assets/images/menu/career.png',
    'assets/images/menu/contact.png',
  ];

  List<String> sectionNames = ['Home', 'About', 'Project', 'Career', 'Contact'];

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void toggleLogo(int index) {
    setState(() {
      isLogoVisible[index] = false;
    });
    widget.onSectionTap(index);

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLogoVisible[index] = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 800,
          height: 50.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xFFedf2fb).withOpacity(0.8),
              const Color(0xFFe2eafc).withOpacity(0.8),
              const Color(0xFFd7e3fc).withOpacity(0.8),
              const Color(0xFFccdbfd).withOpacity(0.8),
              const Color(0xFFc1d3fe).withOpacity(0.8),
              const Color(0xFFb6ccfe).withOpacity(0.8),
              const Color(0xFFabc4ff).withOpacity(0.8)
            ]),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              tabBarTheme: const TabBarTheme(
                dividerColor: Colors.transparent,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                TabBar(
                  controller: tabController,
                  indicator: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  tabs: List.generate(
                    5,
                    (index) => GestureDetector(
                      onTap: () {
                        toggleLogo(index);
                      },
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: isLogoVisible[index]
                            ? Image.asset(
                                sectionLogos[index],
                                key: ValueKey('logo_$index'),
                                height: 40,
                                width: 40,
                              )
                            : Text(
                                sectionNames[index],
                                key: ValueKey('name_$index'),
                                style: const TextStyle(
                                    color: AppColors.ebony,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HoverButton extends StatefulWidget {
  final String label;

  const HoverButton({super.key, required this.label});

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: SizedBox(
        width: 120,
        height: 55,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              widget.label,
              style: const TextStyle(
                color: AppColors.ebony,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
