import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

// private class
class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Text('QuestionScreen');
  }
}
