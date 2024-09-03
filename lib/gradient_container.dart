import 'package:flutter/material.dart';
import 'package:myapp/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//custom widget
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  //this is shortcut
  const GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ];
  // so when call use this
  // GradientContainer.purple()

  final List<Color> colors;

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
        child: Image.asset('assets/images/dice-2.png', width: 200,),
      ),
    );
  }
}
