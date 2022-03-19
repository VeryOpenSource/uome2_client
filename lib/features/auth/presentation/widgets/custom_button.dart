import 'package:flutter/material.dart';

Widget customButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
    child: const Text('Button'),
  );
}
