import 'package:expense_tracker/tracker_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseTracker());
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: ExpenseTrackerScaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExpenseTrackerScaffold extends StatefulWidget {
  const ExpenseTrackerScaffold({super.key});
  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffold();
}

class _ExpenseTrackerScaffold extends State<ExpenseTrackerScaffold> {
  late Widget wid;
  @override
  void initState() {
    super.initState();
    wid = TrackerPage(fun: widgetChanger);
  }

  void widgetChanger(Widget w) {
    setState(() {
      wid = w;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(color: Colors.black)),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.red),
            ),
            child: wid,
          ),
        ),
      ),
    );
  }
}
