import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final random = Random();
  int diceNumber() {
    int randomNumber = random.nextInt(6) + 1;
    return randomNumber;
  }

  var currentDiceRoll1 = 1;
  var currentDiceRoll2 = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll1 = diceNumber();
      currentDiceRoll2 = diceNumber();
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/Images/dice-images/dice-$currentDiceRoll1.png',
            width: 200,
          ),
          Image.asset(
            'assets/Images/dice-images/dice-$currentDiceRoll2.png',
            width: 200,
          ),
        ]),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8.0),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(140, 106, 246, 5),
              textStyle: const TextStyle(
                fontSize: 20,
                fontFamily: 'Calibri',
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
