import 'package:flutter/material.dart';
import 'package:uome2/features/auth/presentation/widgets/reusable_clipoval.dart';

class CustomFigureS extends StatelessWidget {
  const CustomFigureS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ReusableClipOval(
                containerColour: Colors.white,
              ),
              ReusableClipOval(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ReusableClipOval(),
              ReusableClipOval(
                containerColour: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ReusableClipOval(
                containerColour: Colors.white,
              ),
              ReusableClipOval(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ReusableClipOval(),
              ReusableClipOval(
                containerColour: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
