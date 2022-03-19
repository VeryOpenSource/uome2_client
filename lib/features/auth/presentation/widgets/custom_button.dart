import 'package:flutter/material.dart';
import 'package:uome2/core/theme/colors.dart';

Widget customButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: AppColors.secondaryColor,
      onPrimary: AppColors.whiteColor,
      shape: const StadiumBorder(),
    ),
    child: const Text('App Color'),
  );
}

