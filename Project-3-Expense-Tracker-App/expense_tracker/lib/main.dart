import 'package:expense_tracker/models/expense.dart';
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
    wid = TrackerPage(fun: widgetChanger, expensesList: expensesList);
  }

  void widgetChanger(Widget w) {
    setState(() {
      wid = w;
    });
  }

  List<Expense> expensesList = [
    Expense(
      title: 'Had A Pizza',
      category: Category.food,
      amount: 5.05,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Purchased A Wireless Keyboard',
      category: Category.work,
      amount: 10.55,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Train Ticket To Churchgate',
      category: Category.travel,
      amount: 15.05,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Adventure Park Ticket',
      category: Category.leisure,
      amount: 20.55,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(color: Colors.black)),
      body: Container(
        color: Colors.black,
        child: Padding(padding: const EdgeInsets.all(25.0), child: wid),
      ),
    );
  }
}
