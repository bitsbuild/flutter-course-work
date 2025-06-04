import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class TrackerPage extends StatefulWidget {
  ValueChanged<Widget> fun;
  ValueChanged<List<Expense>> func;
  List<Expense> expensesList;
  TrackerPage({
    super.key,
    required this.fun,
    required this.expensesList,
    required this.func,
  });

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Analytics', style: TextStyle(color: Colors.white)),
          SizedBox(
            height: 200,
            child: ExpenseList(
              expenses: widget.expensesList,
              func: widget.func,
            ),
          ),
        ],
      ),
    );
  }
}
