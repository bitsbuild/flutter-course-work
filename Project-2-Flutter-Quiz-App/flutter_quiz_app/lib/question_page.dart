import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/results_page.dart';

class QuizAppQuestion extends StatefulWidget {
  ValueChanged<Widget> funcs;
  QuizAppQuestion({super.key, required this.funcs});

  @override
  State<QuizAppQuestion> createState() => _QuizAppQuestion();
}

class _QuizAppQuestion extends State<QuizAppQuestion> {
  List<String> questions = [
    "What command is used to create a new Flutter project?",
    "Which widget allows layout to exceed screen boundaries?",
    "Which file is used to declare Flutter dependencies?",
    "Which widget is used for flexible row or column layouts?",
    "What does the 'setState()' method do?",
    "Which command runs a Flutter app on a device?",
    "Which widget is used for scrolling a list of items?",
    "What language is primarily used in Flutter development?",
    "Which directory holds Dart source files in Flutter?",
    "What does 'hot reload' do in Flutter?",
  ];

  List<String> op1 = [
    "flutter_start",
    "Container",
    "main.dart",
    "Stack",
    "Saves state to disk",
    "flutter build",
    "Column",
    "Java",
    "build",
    "Restarts the app",
  ];

  List<String> op2 = [
    "flutter init",
    "SizedBox",
    "pubspec.lock",
    "Expanded",
    "Builds UI manually",
    "flutter compile",
    "GridView",
    "Kotlin",
    "android",
    "Clears app data",
  ];

  List<String> op3 = [
    "flutter create",
    "OverflowBox",
    "pubspec.yaml",
    "Flex",
    "Rebuilds UI with new state",
    "flutter run",
    "ListView",
    "Dart",
    "lib",
    "Updates code without full restart",
  ];

  List<String> op4 = [
    "flutter begin",
    "FittedBox",
    "config.yaml",
    "Align",
    "Triggers garbage collection",
    "flutter serve",
    "Stack",
    "Swift",
    "ios",
    "Only updates UI colors",
  ];

  List<String> correctAnswers = [
    "flutter create",
    "OverflowBox",
    "pubspec.yaml",
    "Flex",
    "Rebuilds UI with new state",
    "flutter run",
    "ListView",
    "Dart",
    "lib",
    "Updates code without full restart",
  ];

  int curr = 0;

  List<int> scores = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 100,
            width: 280,
            child: Center(
              child: Text(
                questions[curr],
                softWrap: true,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 280,
            child: OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              onPressed:
                  () => {
                    if (op1[curr] == correctAnswers[curr])
                      {
                        setState(() {
                          scores[curr] = 1;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      }
                    else
                      {
                        setState(() {
                          scores[curr] = 0;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      },
                  },
              child: Text(
                op1[curr],
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 280,
            child: OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              onPressed:
                  () => {
                    if (op2[curr] == correctAnswers[curr])
                      {
                        setState(() {
                          scores[curr] = 1;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      }
                    else
                      {
                        setState(() {
                          scores[curr] = 0;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      },
                  },
              child: Text(
                op2[curr],
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 280,
            child: OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              onPressed:
                  () => {
                    if (op3[curr] == correctAnswers[curr])
                      {
                        setState(() {
                          scores[curr] = 1;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      }
                    else
                      {
                        setState(() {
                          scores[curr] = 0;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      },
                  },
              child: Text(
                op3[curr],
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 280,
            child: OutlinedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              onPressed:
                  () => {
                    if (op4[curr] == correctAnswers[curr])
                      {
                        setState(() {
                          scores[curr] = 1;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      }
                    else
                      {
                        setState(() {
                          scores[curr] = 0;
                          if (curr < 9) {
                            curr = curr + 1;
                          } else {
                            widget.funcs(
                              QuizAppResults(sc: scores, corr: correctAnswers),
                            );
                          }
                        }),
                      },
                  },
              child: Text(
                op4[curr],
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
