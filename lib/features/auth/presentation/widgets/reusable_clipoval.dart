import 'dart:math' as math;

import 'package:flutter/material.dart';

class ReusableClipOval extends StatelessWidget {
  const ReusableClipOval({
    Key? key,
    this.angleDivider = 4,
    this.containerColour = Colors.black,
    this.containerHeight = 7,
    this.containerWidth = 7,
  }) : super(key: key);

  final double angleDivider;
  final Color containerColour;
  final double containerHeight;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / angleDivider,
      child: ClipOval(
        child: Container(
          height: containerHeight,
          color: containerColour,
          width: containerWidth,
        ),
      ),
    );
  }
}
