import 'package:flutter/material.dart';

import 'expense_tracker_class.dart';

class ExpenseTrackerBody extends StatefulWidget {
  late ValueChanged<Map<Expense, int>> functionDelete;
  List<Expense> exp;
  ExpenseTrackerBody({
    super.key,
    required this.functionDelete,
    required this.exp,
  });
  @override
  State<ExpenseTrackerBody> createState() => _ExpenseTrackerBodyState();
}

class _ExpenseTrackerBodyState extends State<ExpenseTrackerBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Analytics', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
