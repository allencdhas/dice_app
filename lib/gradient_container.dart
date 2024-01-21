import 'package:flutter/material.dart';

import 'package:dice_app/style_text.dart';

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
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset('assets/dice-images/dice-2.png', width: 200),
            TextButton(
                onPressed: () {},
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
                )),
          ]),
        ));
  }
}
