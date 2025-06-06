import 'package:expense_tracker/expense_tracker_class.dart';
import 'package:expense_tracker/expense_tracker_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseTracker());
}

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  List<Expense> expenses = [
    Expense(
      title: 'Trekking',
      category: Category.leisure,
      amount: 10.01,
      date: DateTime.now(),
    ),
  ];

  void updateExpenses(List<Expense> updatedList) {
    setState(() {
      expenses = List.from(updatedList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expense Tracker',
      debugShowCheckedModeBanner: false,
      home: ExpenseTrackerScaffold(func: updateExpenses, li: expenses),
    );
  }
}
