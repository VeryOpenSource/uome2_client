import 'package:flutter/material.dart';
import 'package:uome2/config.dart';
import 'package:uome2/core/theme/colors.dart';
import 'package:uome2/core/theme/theme.dart';
import 'package:uome2/features/auth/presentation/pages/login_page.dart';

void main() {
  Config();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.lightGreyColor,
      debugShowCheckedModeBanner: false,
      title: 'UOME2',
      theme: AppTheme.theme,
      home: const LoginPage(),
    );
  }
}
