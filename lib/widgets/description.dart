import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class DescriptionPic extends StatefulWidget {
  final Size size;
  const DescriptionPic({super.key, required this.size});

  @override
  _DescriptionPicState createState() => _DescriptionPicState();
}

class _DescriptionPicState extends State<DescriptionPic> {
  RiveAvatar? _riveAvatar;
  final GlobalKey _containerKey = GlobalKey();
  Offset _containerPosition = Offset.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _getContainerPosition());
  }

  void _getContainerPosition() {
    final RenderBox renderBox =
        _containerKey.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      _containerPosition = renderBox.localToGlobal(Offset.zero);
    });
  }

  void _onRiveInit(Artboard artboard) {
    setState(() {
      _riveAvatar = RiveAvatar(artboard);
    });
  }

  void _onMouseMove(PointerEvent details) {
    if (_riveAvatar != null) {
      // Calculate the position relative to the container
      final localPosition = details.position - _containerPosition;
      _riveAvatar!.move(localPosition);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onHover: _onMouseMove,
      child: SizedBox(
        key: _containerKey,
        height: size.height,
        width: size.width,
        child: RiveAnimation.asset(
          "assets/rive/profile.riv",
          onInit: _onRiveInit,
        ),
      ),
    );
  }
}

class RiveAvatar {
  late Artboard _artboard;
  SMIInput<double>? _mouseXInput;
  SMIInput<double>? _mouseYInput;

  RiveAvatar(Artboard artboard) {
    _artboard = artboard;
    _initializeController();
  }

  void _initializeController() {
    var controller =
        StateMachineController.fromArtboard(_artboard, 'State Machine 1');
    if (controller != null) {
      _artboard.addController(controller);
      _mouseXInput = controller.findInput<double>('mouseX');
      _mouseYInput = controller.findInput<double>('mouseY');
    }
  }

  void move(Offset localPosition) {
    if (_mouseXInput != null && _mouseYInput != null) {
      // Map local position to Rive artboard coordinates
      final x = (localPosition.dx / _artboard.width) * 500;
      final y = (localPosition.dy / _artboard.height) * 500;

      _mouseXInput!.value = x;
      _mouseYInput!.value = y;
    }
  }
}
