import 'package:flutter/material.dart';
import 'package:myapp/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//custom widget
class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  //this is shortcut
  GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ];
  // so when call use this
  // GradientContainer.purple()

  final List<Color> colors;
  var activeDiceImage = 'assets/images/dice-2.png';

  //function for press button
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Changing images...');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
