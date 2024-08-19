import 'package:Portfolio/const/themecolors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class LanguageRoseChart extends StatefulWidget {
  final double borderRadius;
  const LanguageRoseChart({super.key, this.borderRadius = 50});

  @override
  _LanguageRoseChartState createState() => _LanguageRoseChartState();
}

class _LanguageRoseChartState extends State<LanguageRoseChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isHovered = false;

  final List<LanguageSkill> hoveredLanguages = [
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('English C1', 'C1', 0.8,
        [const Color(0xff40c9ff), const Color(0xffe81cff)]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('Arabic C2', 'C2', 1,
        [const Color(0xff696eff), const Color(0xfff8acff)]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('French B2', 'B2', 0.6,
        [const Color(0xff8711c1), const Color(0xff2472fc)]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
  ];

  final List<LanguageSkill> nonHoveredLanguages = [
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('English', 'B1', 0.6,
        [const Color(0xff40c9ff), const Color(0xffe81cff)]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('Arabic', 'A2', 0.4,
        [const Color(0xff696eff), const Color(0xfff8acff)]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
    LanguageSkill('French', 'A1', 0.2,
        [const Color(0xff8711c1), const Color(0xff2472fc)]),
    LanguageSkill('', '', 0.1, [Colors.white54, Colors.white30]),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            painter: LanguageRoseChartPainter(
              nonHoveredLanguages: nonHoveredLanguages,
              hoveredLanguages: hoveredLanguages,
              progress: _animation.value,
              borderRadius: widget.borderRadius,
              isHovered: _isHovered,
            ),
            child: SizedBox(
              width: 350,
              height: 350,
              child: Center(
                child: AnimatedOpacity(
                  opacity: _isHovered ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.paleSlate)),
                    child: const Center(
                      child: Text(
                        'Hover\nhere',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
    if (isHovered) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class LanguageSkill {
  final String language;
  final String level;
  final double size;
  final List<Color> colors;

  LanguageSkill(this.language, this.level, this.size, this.colors);
}

class LanguageRoseChartPainter extends CustomPainter {
  final List<LanguageSkill> nonHoveredLanguages;
  final List<LanguageSkill> hoveredLanguages;
  final double progress;
  final double borderRadius;
  final bool isHovered;

  LanguageRoseChartPainter(
      {required this.nonHoveredLanguages,
      required this.hoveredLanguages,
      required this.progress,
      required this.borderRadius,
      required this.isHovered});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = min(size.width, size.height) / 2;
    final innerRadius = maxRadius * 0.2;

    double startAngle = -pi / 2;
    const double space = pi / 180;

    final rect = Rect.fromCenter(
      center: center,
      width: size.width,
      height: size.height,
    );
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    canvas.clipRRect(rrect);

    final languages = isHovered ? hoveredLanguages : nonHoveredLanguages;

    for (int i = 0; i < languages.length; i++) {
      final lang = languages[i];
      final sweepAngle = (2 * pi / languages.length) - space;
      final endAngle = startAngle + sweepAngle;

      final outerRadius =
          innerRadius + (maxRadius - innerRadius) * lang.size * progress;

      final path = Path();
      path.moveTo(center.dx + innerRadius * cos(startAngle),
          center.dy + innerRadius * sin(startAngle));
      path.lineTo(center.dx + outerRadius * cos(startAngle),
          center.dy + outerRadius * sin(startAngle));
      path.arcTo(Rect.fromCircle(center: center, radius: outerRadius),
          startAngle, sweepAngle, false);
      path.lineTo(center.dx + innerRadius * cos(endAngle),
          center.dy + innerRadius * sin(endAngle));
      path.arcTo(Rect.fromCircle(center: center, radius: innerRadius), endAngle,
          -sweepAngle, false);
      path.close();

      final gradient = RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: lang.colors,
        stops: const [0.0, 1.0],
      );

      final paint = Paint()
        ..shader = gradient
            .createShader(Rect.fromCircle(center: center, radius: maxRadius))
        ..style = PaintingStyle.fill;

      canvas.drawShadow(path, Colors.black.withOpacity(0.3), 4, true);
      canvas.drawPath(path, paint);

      final sectorCenterAngle = startAngle + sweepAngle / 2;
      final sectorCenterRadius = innerRadius + (outerRadius - innerRadius) / 2;

      final textCenter = Offset(
        center.dx + sectorCenterRadius * cos(sectorCenterAngle),
        center.dy + sectorCenterRadius * sin(sectorCenterAngle),
      );

      if (lang.language.isNotEmpty) {
        final textPainter = TextPainter(
          text: TextSpan(
            text: lang.language,
            style: TextStyle(
              color: Colors.white
                  .withOpacity(isHovered ? progress : 1.0 - progress),
              fontSize: 12.0,
              fontFamily: 'Poppins',
            ),
          ),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        );
        textPainter.layout();

        if (isHovered) {
          textPainter.paint(
              canvas,
              textCenter -
                  Offset(textPainter.width / 2, textPainter.height / 2));
        } else {
          final outerTextCenter = Offset(
            center.dx + (maxRadius * 0.9) * cos(sectorCenterAngle),
            center.dy + (maxRadius * 0.9) * sin(sectorCenterAngle),
          );
          textPainter.paint(
              canvas,
              outerTextCenter -
                  Offset(textPainter.width / 2, textPainter.height / 2));
        }
      }

      startAngle = endAngle + space;
    }
  }

  @override
  bool shouldRepaint(covariant LanguageRoseChartPainter oldDelegate) =>
      progress != oldDelegate.progress || isHovered != oldDelegate.isHovered;
}
