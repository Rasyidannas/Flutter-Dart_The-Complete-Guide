import 'package:flutter/material.dart';

//custom widget
class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hello World!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
