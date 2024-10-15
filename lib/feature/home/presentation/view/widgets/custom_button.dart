import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIncrementButton extends StatelessWidget {
  CustomIncrementButton(
      {super.key, required this.point, required this.onPressed});
  final int point;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      child: Text(
        "Add $point Points",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
