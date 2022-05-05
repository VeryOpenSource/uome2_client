import 'package:flutter/material.dart';
import 'package:uome2/core/themes/app_colors.dart';


Widget customButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: AppColors.secondary,
    ),
    child: const Text(
      'App Color',
      style: TextStyle(
        color: AppColors.blackColor,
      ),
    ),
  );
}