import 'package:flutter/material.dart';
import 'package:uome2/features/auth/presentation/widgets/reusable_clipoval.dart';

class CustomFigureZ extends StatelessWidget {
  const CustomFigureZ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReusableClipOval(),
              ReusableClipOval(),
              ReusableClipOval(),
              ReusableClipOval(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReusableClipOval(
                containerColour: Colors.white,
              ),
              ReusableClipOval(
                containerColour: Colors.white,
              ),
              ReusableClipOval(
                containerWidth: 8,
              ),
              ReusableClipOval(
                containerColour: Colors.white,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReusableClipOval(
                containerColour: Colors.white,
              ),
              ReusableClipOval(
                containerWidth: 9,
              ),
              ReusableClipOval(
                containerColour: Colors.white,
              ),
              ReusableClipOval(
                containerColour: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReusableClipOval(),
              ReusableClipOval(),
              ReusableClipOval(),
              ReusableClipOval(),
            ],
          ),
        ],
      ),
    );
  }
}
