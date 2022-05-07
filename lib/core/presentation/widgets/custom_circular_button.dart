import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uome2/core/presentation/themes/app_colors.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton(
      {Key? key, required this.onPressed, required this.flatIcon})
      : super(key: key);
  final Function onPressed;
  final IconData flatIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed,
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
