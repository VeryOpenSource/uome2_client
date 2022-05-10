import 'package:flutter/material.dart';
import 'package:uome2/core/presentation/widgets/custom_rounded_button.dart';
import 'package:uome2/features/auth/presentation/pages/login_page.dart';
import 'package:uome2/features/auth/presentation/widgets/custom_figure_s.dart';
import 'package:uome2/features/auth/presentation/widgets/custom_figure_z.dart';
import 'package:uome2/features/auth/presentation/widgets/leaf_shape.dart';
import 'package:uome2/features/auth/presentation/widgets/reusable_clipoval.dart';
import 'package:uome2/features/auth/presentation/widgets/reusable_rectangular_shape.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 340,
              child: Stack(
                children: const [
                  Positioned(
                    left: 125,
                    top: 15,
                    child: ReusableClipOval(
                      containerColour: Color(0xFFE1E3E8),
                      containerHeight: 10,
                      containerWidth: 10,
                    ),
                  ),
                  Positioned(
                    left: 240,
                    top: 15,
                    child: ReusableRectangularShape(
                      containerColour: Color(0xFFE1E3E8),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 80,
                    child: ReusableRectangularShape(
                      containerColour: Color(0xFFE1E3E8),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 60,
                    child: CustomFigureS(),
                  ),
                  Positioned(
                    left: 170,
                    top: 65,
                    child: ReusableClipOval(
                      containerHeight: 10,
                      containerWidth: 10,
                    ),
                  ),
                  Positioned(
                    left: 230,
                    top: 60,
                    child: LeafShapeWidget(),
                  ),
                  Positioned(
                    left: 20,
                    top: 150,
                    child: LeafShapeWidget(
                      containerSize: 40,
                      ellipticalRaduisSize: 30,
                      containerColour: Color(0xFFE1E3E8),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 100,
                    child: ReusableClipOval(
                      containerColour: Color(0XFFF58945),
                      containerHeight: 180,
                      containerWidth: 180,
                    ),
                  ),
                  Positioned(
                    left: 290,
                    top: 120,
                    child: CustomFigureZ(),
                  ),
                  Positioned(
                    left: 300,
                    top: 210,
                    child: LeafShapeWidget(
                      angleDivider: 3 / 5,
                      containerColour: Color(0xFFE1E3E8),
                      containerSize: 35,
                      ellipticalRaduisSize: 27,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 240,
                    child: CustomFigureZ(),
                  ),
                  Positioned(
                    left: 110,
                    top: 300,
                    child: ReusableClipOval(),
                  ),
                  Positioned(
                    left: 180,
                    top: 320,
                    child: ReusableClipOval(
                      containerColour: Color(0xFFE1E3E8),
                      containerHeight: 13,
                      containerWidth: 13,
                    ),
                  ),
                  Positioned(
                    left: 260,
                    top: 240,
                    child: ReusableClipOval(),
                  ),
                  Positioned(
                    left: 250,
                    top: 295,
                    child: ReusableRectangularShape(
                      containerColour: Color(0xFFE1E3E8),
                      containerWidth: 45,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Hey! Welcome',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing ',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomRoundedButton(
                btntext: 'Get Started',
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
              ),
            ),
            InkWell(
              onTap: () {
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
                'I already have an acount',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
