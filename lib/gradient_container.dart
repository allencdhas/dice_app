import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

//import 'package:dice_app/style_text.dart';
import "package:dice_app/dice_roller.dart";

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Color.fromARGB(192, 114, 33, 164)],
            begin: startAlign,
            end: endAlign,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
