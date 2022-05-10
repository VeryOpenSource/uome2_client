import 'dart:math' as math;

import 'package:flutter/material.dart';

class LeafShapeWidget extends StatelessWidget {
  const LeafShapeWidget({
    Key? key,
    this.angleDivider = 1,
    this.containerColour = const Color(0xFFFFDE69),
    this.containerSize = 50,
    this.ellipticalRaduisSize = 40,
  }) : super(key: key);

  final double angleDivider;
  final Color containerColour;
  final double containerSize;
  final double ellipticalRaduisSize;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / angleDivider,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight:
              Radius.elliptical(ellipticalRaduisSize, ellipticalRaduisSize),
          topLeft:
              Radius.elliptical(ellipticalRaduisSize, ellipticalRaduisSize),
        ),
        child: Container(
          color: containerColour,
          height: containerSize,
          width: containerSize,
        ),
      ),
    );
  }
}
