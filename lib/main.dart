import 'package:flutter/material.dart';
import 'package:uome2/core/presentation/themes/themes.dart';
import 'package:uome2/features/auth/presentation/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.lightGrey,
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: AppTheme.theme,
      title: 'UOME2',
    );
  }
}
