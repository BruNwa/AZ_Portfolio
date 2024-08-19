import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:url_launcher/url_launcher.dart';
import '../const/themecolors.dart';

class Certificate {
  final String title;
  final String imagePath;
  final String description;
  final String link;

  Certificate(
      {required this.title,
      required this.imagePath,
      required this.description,
      required this.link});
}

class CertificateCarouselSlide extends StatefulWidget {
  final Duration autoScrollDuration;
  final int visibleItems;
  final Duration focusDuration;
  final double fadeWidth;
  final Size size;
  const CertificateCarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 30),
      this.visibleItems = 2,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.2,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5);

  @override
  _CertificateCarouselSlideState createState() =>
      _CertificateCarouselSlideState();
}

class _CertificateCarouselSlideState extends State<CertificateCarouselSlide> {
  late PageController _pageController;
  DateTime _lastInteraction = DateTime.now();

  final List<Certificate> _certificates = [
    Certificate(
        title: "HackerRank",
        imagePath: "assets/images/certifications/1.jpeg",
        description: "HackerRank SQL Certification.",
        link: "https://www.hackerrank.com/certificates/933aaf7e24ca"),
    Certificate(
        title: "HackerRank",
        imagePath: "assets/images/certifications/8.jpeg",
        description: "HackerRank Python Certification.",
        link: "https://www.hackerrank.com/certificates/89f0c442a63c"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/2.jpeg",
        description:
            "Microsoft Technology Associate: Windows Server Administration Fundamentals.",
        link:
            "https://drive.google.com/file/d/1A5nnFAgA46K2CVP0l2YcMexh4tQmw0_l/view"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/3.jpeg",
        description:
            "Microsoft Technology Associate: Windows Operating System Fundamentals.",
        link:
            "https://drive.google.com/file/d/1qwv2QQWXQI5PVG_HCNuwyxiRFIuMMb3U/view"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/4.jpeg",
        description: "Microsoft Technology Associate: Networking Fundamentals.",
        link:
            "https://drive.google.com/file/d/1pMJ3a4VR5JwplA59OtcUsNpnRds0l2LV/view"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/6.jpeg",
        description: "Microsoft Office Specialist.",
        link:
            "https://drive.google.com/file/d/1kevRIJyLwPEE1VmuTxKpdV08Q6ZZGinl/view"),
    Certificate(
        title: "HackerRank",
        imagePath: "assets/images/certifications/5.jpeg",
        description: " HackerRank Problem Solving Certificate",
        link: "https://www.hackerrank.com/certificates/6abc3b907792"),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleItems,
      initialPage: _certificates.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      if (DateTime.now().difference(_lastInteraction) >= widget.focusDuration) {
        _pageController.nextPage(
          duration: widget.autoScrollDuration,
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _showCertificateDialog(BuildContext context, Certificate certificate) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    certificate.description,
                    style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: AppColors.paleSlate),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(certificate.imagePath),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text("View Certificate"),
                        onPressed: () async {
                          if (await canLaunch(certificate.link)) {
                            await launch(certificate.link);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Could not launch ${certificate.link}')),
                            );
                          }
                        },
                      ),
                      const SizedBox(width: 25),
                      ElevatedButton(
                        child: const Text("Close"),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
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
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                if (notification is ScrollStartNotification ||
                    notification is ScrollUpdateNotification) {
                  _lastInteraction = DateTime.now();
                }
                return false;
              },
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) {
                  final certificateIndex = index % _certificates.length;
                  final certificate = _certificates[certificateIndex];
                  return Center(
                    child: GestureDetector(
                      onTap: () => _showCertificateDialog(context, certificate),
                      child: SizedBox(
                        height: maxHeight * 0.8,
                        width: (maxWidth / widget.visibleItems) * 0.9,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              // BoxShadow(
                              //   color: Colors.black.withOpacity(0.3),
                              //   spreadRadius: 2,
                              //   blurRadius: 10,
                              //   offset: Offset(0, 5),
                              // ),
                            ],
                            color: Colors.transparent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    certificate.imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  certificate.title,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      color: AppColors.paleSlate),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class SmallCertificateCarouselSlide extends StatefulWidget {
  final Duration autoScrollDuration;
  final int visibleItems;
  final Duration focusDuration;
  final double fadeWidth;
  final Size size;
  const SmallCertificateCarouselSlide(
      {super.key,
      this.autoScrollDuration = const Duration(milliseconds: 30),
      this.visibleItems = 1,
      this.focusDuration = const Duration(seconds: 2),
      this.fadeWidth = 0.2,
      required this.size})
      : assert(fadeWidth >= 0 && fadeWidth <= 0.5,
            'fadeWidth must be between 0 and 0.5');

  @override
  _SmallCertificateCarouselSlideState createState() =>
      _SmallCertificateCarouselSlideState();
}

class _SmallCertificateCarouselSlideState
    extends State<SmallCertificateCarouselSlide> {
  late PageController _pageController;
  DateTime _lastInteraction = DateTime.now();

  final List<Certificate> _certificates = [
    Certificate(
        title: "HackerRank",
        imagePath: "assets/images/certifications/1.jpeg",
        description: "HackerRank SQL Certification.",
        link: "https://www.hackerrank.com/certificates/933aaf7e24ca"),
    Certificate(
        title: "HackerRank",
        imagePath: "assets/images/certifications/8.jpeg",
        description: "HackerRank Python Certification.",
        link: "https://www.hackerrank.com/certificates/89f0c442a63c"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/2.jpeg",
        description:
            "Microsoft Technology Associate: Windows Server Administration Fundamentals.",
        link:
            "https://drive.google.com/file/d/1A5nnFAgA46K2CVP0l2YcMexh4tQmw0_l/view"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/3.jpeg",
        description:
            "Microsoft Technology Associate: Windows Operating System Fundamentals.",
        link:
            "https://drive.google.com/file/d/1qwv2QQWXQI5PVG_HCNuwyxiRFIuMMb3U/view"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/4.jpeg",
        description: "Microsoft Technology Associate: Networking Fundamentals.",
        link:
            "https://drive.google.com/file/d/1pMJ3a4VR5JwplA59OtcUsNpnRds0l2LV/view"),
    Certificate(
        title: "Microsoft",
        imagePath: "assets/images/certifications/6.jpeg",
        description: "Microsoft Office Specialist.",
        link:
            "https://drive.google.com/file/d/1kevRIJyLwPEE1VmuTxKpdV08Q6ZZGinl/view"),
    Certificate(
        title: "HackerRank",
        imagePath: "assets/images/certifications/5.jpeg",
        description: " HackerRank Problem Solving Certificate",
        link: "https://www.hackerrank.com/certificates/6abc3b907792"),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1 / widget.visibleItems,
      initialPage: _certificates.length * 1000,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  void _autoScroll() async {
    while (mounted) {
      await Future.delayed(widget.focusDuration);
      if (!mounted) return;

      if (DateTime.now().difference(_lastInteraction) >= widget.focusDuration) {
        _pageController.nextPage(
          duration: widget.autoScrollDuration,
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _showCertificateDialog(BuildContext context, Certificate certificate) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    certificate.description,
                    style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: AppColors.paleSlate),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(certificate.imagePath),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text("View Certificate"),
                        onPressed: () async {
                          if (await canLaunch(certificate.link)) {
                            await launch(certificate.link);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Could not launch ${certificate.link}')),
                            );
                          }
                        },
                      ),
                      const SizedBox(width: 25),
                      ElevatedButton(
                        child: const Text("Close"),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
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
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                if (notification is ScrollStartNotification ||
                    notification is ScrollUpdateNotification) {
                  _lastInteraction = DateTime.now();
                }
                return false;
              },
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) {
                  final certificateIndex = index % _certificates.length;
                  final certificate = _certificates[certificateIndex];
                  return Center(
                    child: GestureDetector(
                      onTap: () => _showCertificateDialog(context, certificate),
                      child: SizedBox(
                        height: maxHeight * 0.8,
                        width: (maxWidth / widget.visibleItems) * 0.9,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              // BoxShadow(
                              //   color: Colors.black.withOpacity(0.3),
                              //   spreadRadius: 2,
                              //   blurRadius: 10,
                              //   offset: Offset(0, 5),
                              // ),
                            ],
                            color: Colors.transparent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    certificate.imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  certificate.title,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      color: AppColors.paleSlate),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
