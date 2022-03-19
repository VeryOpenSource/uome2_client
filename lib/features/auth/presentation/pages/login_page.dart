import 'package:flutter/material.dart';
import 'package:uome2/features/auth/presentation/widgets/custom_button.dart';

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
        child: Column(
          children: [
            Text(
              'h1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'h2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'h3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'h4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'h5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'h6',
              style: Theme.of(context).textTheme.headline6,
            ),
            customButton(),
          ],
        ),
      ),
    );
  }
}
