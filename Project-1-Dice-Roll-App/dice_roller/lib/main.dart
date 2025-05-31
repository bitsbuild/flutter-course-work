import 'package:dice_roller/random_dice_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceRoller());
}

class DiceRoller extends StatelessWidget {
  const DiceRoller({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      home: DiceRollerScaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DiceRollerScaffold extends StatefulWidget {
  const DiceRollerScaffold({super.key});
  @override
  State<DiceRollerScaffold> createState() => _DiceRollerScaffold();
}

class _DiceRollerScaffold extends State<DiceRollerScaffold> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Your Digital Dice, Always Ready.',
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(), color: Colors.black),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset('assets/dice-$num.png', height: 300, width: 300),
              SizedBox(height: 30),
              OutlinedButton(
                onPressed:
                    () => {
                      setState(() {
                        num = randomDiceNumber();
                      }),
                    },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                child: Text(
                  'Roll',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
