import "package:flutter/material.dart";

import "dart:math";

final randomizr = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var roll = 2;

  void rollDice() {
    setState(() {
      roll = randomizr.nextInt(6) + 1;
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/dice-images/dice-$roll.png", width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}
