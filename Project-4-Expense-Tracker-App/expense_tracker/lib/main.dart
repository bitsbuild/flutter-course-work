import 'package:expense_tracker/expense_tracker_class.dart';
import 'package:expense_tracker/expense_tracker_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseTracker());
}

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});
  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  late Widget wid;
  List<Expense> expenses = [];
  void listAdd(Expense e) {
    setState(() {
      expenses.add(e);
      wid =
          wid = ExpenseTrackerScaffold(
            functionAdd: listAdd,
            functionDelete: listDelete,
            exp: expenses,
          );
    });
  }

  void listDelete(Map<Expense, int> i) {
    setState(() {
      int indexToRemove = i.values.first; // Or i[i.keys.first]
      expenses.removeAt(indexToRemove);
      wid =
          wid = ExpenseTrackerScaffold(
            functionAdd: listAdd,
            functionDelete: listDelete,
            exp: expenses,
          );
    });
  }

  @override
  void initState() {
    super.initState();
    wid = ExpenseTrackerScaffold(
      functionAdd: listAdd,
      functionDelete: listDelete,
      exp: expenses,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: wid,
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
    );
  }
}
