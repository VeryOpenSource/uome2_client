import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uome2/core/themes/app_colors.dart';
import 'package:uome2/features/auth/presentation/widgets/custom_button.dart';

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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        color: AppColors.lightGrey,
      ),
      height: MediaQuery.of(context).size.height * 0.85,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: const Icon(Icons.cancel_outlined),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
            _loginForm(context)
          ],
        ),
      ),
    );
  }

  Widget _divider() {
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

  Widget _buildEmailTextField() {
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

  Widget _buildLoginButton(BuildContext context) {
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

  Widget _loginForm(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(15),
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
            _buildEmailTextField(),
            _buildPasswordTextField(context),
            _buildLoginButton(context),
            const Text(
              'Already Have an Acount?',
              style: TextStyle(color: Colors.blueAccent),
            ),
            _divider(),
            _socialMediaLogin(),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(BuildContext context) {
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

  Widget _socialMediaLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(onPress: () {}, flatIcon: FontAwesomeIcons.facebook),
        CustomButton(onPress: () {}, flatIcon: FontAwesomeIcons.google),
        CustomButton(onPress: () {}, flatIcon: FontAwesomeIcons.twitter),
      ],
    );
  }
}
