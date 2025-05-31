import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/home_page.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizAppScaffold(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quiz',
    );
  }
}

class QuizAppScaffold extends StatefulWidget {
  const QuizAppScaffold({super.key});
  @override
  State<QuizAppScaffold> createState() => _QuizAppScaffold();
}

class _QuizAppScaffold extends State<QuizAppScaffold> {
  late Widget wid;
  @override
  void initState() {
    super.initState();
    wid = QuizAppHome(func: changeWid);
  }

  void changeWid(Widget w) {
    setState(() {
      wid = w;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.green),
            ),
            child: wid,
          ),
        ),
      ),
    );
  }
}
