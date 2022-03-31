import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uome2/core/themes/app_colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.95,
      decoration: const BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.cancel_outlined),
                ),
              ],
            ),
            loginForm(context)
          ],
        ),
      ),
    );
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.black.withOpacity(0.3),
              height: 1,
            ),
          ),
          const Text(' OR '),
          Expanded(
            child: Container(
              color: Colors.black.withOpacity(0.3),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Padding emailTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 14,
            bottom: 8,
            top: 8,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Email Address',
        ),
      ),
    );
  }

  Padding loginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50), // NEW
          primary: AppColors.secondary.withOpacity(0.99),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12,
            ), // <-- Radius
          ),
        ),
        child: Text(
          'Login',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Expanded loginForm(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              'Create an acount',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          emailTextField(),
          passwordTextField(context),
          loginButton(context),
          const Text('Already Have an Acount?'),
          divider(),
          socialMediaLogin(),
        ],
      ),
    );
  }

  Padding passwordTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 14,
            bottom: 8,
            top: 8,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
        obscureText: _passwordVisible,
      ),
    );
  }

  Row socialMediaLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 15,
            padding: const EdgeInsets.all(15),
            primary: AppColors.whiteColor,
            shadowColor: AppColors.blackColor,
            shape: const CircleBorder(),
          ),
          child: const FaIcon(
            FontAwesomeIcons.facebook,
            color: AppColors.blackColor,
            size: 15,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 15,
            padding: const EdgeInsets.all(15),
            primary: AppColors.whiteColor,
            shadowColor: AppColors.blackColor,
            shape: const CircleBorder(),
          ),
          child: const FaIcon(
            FontAwesomeIcons.google,
            color: AppColors.blackColor,
            size: 15,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 15,
            padding: const EdgeInsets.all(15),
            primary: AppColors.whiteColor,
            shadowColor: AppColors.blackColor,
            shape: const CircleBorder(),
          ),
          child: const FaIcon(
            FontAwesomeIcons.twitter,
            color: AppColors.blackColor,
            size: 15,
          ),
        ),
      ],
    );
  }
}
