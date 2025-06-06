import 'package:expense_tracker/expense_tracker_appbar.dart';
import 'package:expense_tracker/expense_tracker_body.dart';
import 'package:expense_tracker/expense_tracker_class.dart';
import 'package:flutter/material.dart';

class ExpenseTrackerScaffold extends StatefulWidget {
  late ValueChanged<Expense> functionAdd;
  ExpenseTrackerScaffold({super.key, required this.functionAdd});
  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffoldState();
}

class _ExpenseTrackerScaffoldState extends State<ExpenseTrackerScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExpenseTrackerAppbar(functionAdd: widget.functionAdd),
      body: expenseTrackerBody,
    );
  }
}
