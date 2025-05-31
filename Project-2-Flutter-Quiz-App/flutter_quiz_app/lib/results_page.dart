import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizAppResults extends StatefulWidget {
  late List<int> sc;
  late List<String> corr;
  QuizAppResults({super.key, required this.sc, required this.corr});

  @override
  State<QuizAppResults> createState() => _QuizAppResultsState();
}

class _QuizAppResultsState extends State<QuizAppResults> {
  resultAlert({required String sc, required String corr}) async {
    return Alert(
      context: context,
      type: AlertType.none,
      title: "Question Was Answered $sc",
      desc: "Correct Answer Was: $corr",
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: Text(
            "Close",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 30),
            Text(
              'Results',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[0] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[0])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[0])},
                    },
                child: Text(
                  'Question 1 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[1] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[1])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[1])},
                    },
                child: Text(
                  'Question 2 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[2] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[2])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[2])},
                    },
                child: Text(
                  'Question 3 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[3] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[3])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[3])},
                    },
                child: Text(
                  'Question 4 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[4] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[4])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[4])},
                    },
                child: Text(
                  'Question 5 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[5] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[5])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[5])},
                    },
                child: Text(
                  'Question 6 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[6] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[6])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[6])},
                    },
                child: Text(
                  'Question 7 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[7] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[7])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[7])},
                    },
                child: Text(
                  'Question 8 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[8] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[8])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[8])},
                    },
                child: Text(
                  'Question 9 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      if (widget.sc[9] == 1)
                        {resultAlert(sc: 'Correctly', corr: widget.corr[9])}
                      else
                        {resultAlert(sc: 'Incorrectly', corr: widget.corr[9])},
                    },
                child: Text(
                  'Question 10 Results',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 80,
              width: 230,
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
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => QuizAppScaffold(),
                        ),
                        (route) => false,
                      ),
                    },
                child: Text(
                  'Retake The Test',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
