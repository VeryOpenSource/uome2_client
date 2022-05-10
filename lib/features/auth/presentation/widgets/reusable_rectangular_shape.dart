import 'dart:math' as math;

import 'package:flutter/material.dart';

class ReusableRectangularShape extends StatelessWidget {
  const ReusableRectangularShape({
    Key? key,
    this.angleDivider = 4,
    this.containerColour = Colors.grey,
    this.containerHeight = 6,
    this.containerWidth = 30,
  }) : super(key: key);

  final double angleDivider;
  final Color containerColour;
  final double containerHeight;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / angleDivider,
      child: Container(
        color: containerColour,
        height: containerHeight,
        width: containerWidth,
      ),
    );
  }
}
