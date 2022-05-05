import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uome2/core/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onPress, required this.flatIcon})
      : super(key: key);
  final Function onPress;
  final IconData flatIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 15,
        padding: const EdgeInsets.all(15),
        primary: AppColors.whiteColor,
        shadowColor: AppColors.blackColor,
        shape: const CircleBorder(),
      ),
      child: FaIcon(
        flatIcon,
        color: AppColors.blackColor,
        size: 15,
      ),
    );
  }
}
