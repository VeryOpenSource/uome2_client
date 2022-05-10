import 'package:flutter/material.dart';
import 'package:uome2/core/presentation/themes/app_colors.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    Key? key,
    required this.btntext,
    required this.onPressed,
    this.btncolor = AppColors.secondary,
  }) : super(key: key);
  final Color? btncolor;
  final String btntext;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50), // NEW
        primary: btncolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ), // <-- Radius
        ),
      ),
      child: Text(
        btntext,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
