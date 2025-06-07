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

List<Expense> expenses = [];
void listAdd(Expense e) {
  expenses.add(e);
}

void listDelete(Map<Expense, int> i) {}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  late Widget wid;
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
