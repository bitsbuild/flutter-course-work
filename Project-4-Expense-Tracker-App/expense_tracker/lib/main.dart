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
  print(expenses.length);
  expenses.add(e);
  print(expenses.length);
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpenseTrackerScaffold(functionAdd: listAdd),
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
    );
  }
}
