import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_page.dart';

class QuizAppHome extends StatefulWidget {
  ValueChanged<Widget> func;
  QuizAppHome({super.key, required this.func});
  @override
  State<QuizAppHome> createState() => _QuizAppHome();
}

class _QuizAppHome extends State<QuizAppHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset('assets/logo.png', height: 350, width: 350),
          SizedBox(height: 30),
          OutlinedButton(
            onPressed: () => {widget.func(QuizAppQuestion(funcs: widget.func))},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Start Quiz',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
