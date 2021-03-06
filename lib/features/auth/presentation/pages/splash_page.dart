import 'package:flutter/material.dart';
import 'package:uome2/features/auth/presentation/pages/login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'UOME2',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return const LoginForm();
              },
            );
          },
          child: const Text(
            'Login',
          ),
        ),
      ),
    );
  }
}
