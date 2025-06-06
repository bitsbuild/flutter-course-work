import 'package:expense_tracker/expense_tracker_appbar.dart';
import 'package:expense_tracker/expense_tracker_body.dart';
import 'package:flutter/material.dart';

class ExpenseTrackerScaffold extends StatefulWidget {
  const ExpenseTrackerScaffold({super.key});

  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffoldState();
}

class _ExpenseTrackerScaffoldState extends State<ExpenseTrackerScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: expenseTrackarAppBar, body: expenseTrackerBody);
  }
}
