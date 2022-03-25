import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uome2/core/theme/colors.dart';

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
        color: AppColors.lightGreyColor,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              // horizontal: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email Address',
                contentPadding: const EdgeInsets.only(
                  left: 14,
                  bottom: 8,
                  top: 8,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              // horizontal: 30,
            ),
            child: TextField(
              obscureText: _passwordVisible,
              decoration: InputDecoration(
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
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding: const EdgeInsets.only(
                  left: 14,
                  bottom: 8,
                  top: 8,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          loginButton(context),
          const Text('Already Have an Acount?'),
          divider(),
          socialMediaLogin(),
      
        ],
      ),
    );
  }

  Padding loginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12,
            ), // <-- Radius
          ),
          primary: AppColors.secondaryColor.withOpacity(0.99),
          minimumSize: const Size.fromHeight(50), // NEW
        ),
        child: Text(
          'Login',
          style: Theme.of(context).textTheme.headline6,
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
              height: 1,
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          const Text(' OR '),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ],
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
            shadowColor: AppColors.primaryBlackColor,
            primary: AppColors.whiteColor,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15),
          ),
          child: const FaIcon(
            FontAwesomeIcons.facebook,
            color: AppColors.primaryBlackColor,
            size: 15,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 15,
            shadowColor: AppColors.primaryBlackColor,
            primary: AppColors.whiteColor,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15),
          ),
          child: const FaIcon(
            FontAwesomeIcons.google,
            color: AppColors.primaryBlackColor,
            size: 15,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 15,
            shadowColor: AppColors.primaryBlackColor,
            primary: AppColors.whiteColor,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15),
          ),
          child: const FaIcon(
            FontAwesomeIcons.twitter,
            color: AppColors.primaryBlackColor,
            size: 15,
          ),
        ),
      ],
    );
  }
}
