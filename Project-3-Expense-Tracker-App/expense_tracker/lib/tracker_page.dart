import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class TrackerPage extends StatefulWidget {
  ValueChanged<Widget> fun;
  TrackerPage({super.key, required this.fun});

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  List<Expense> expensesList = [
    Expense(
      title: 'Expense-1',
      category: Category.food,
      amount: 5.05,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Expense-2',
      category: Category.work,
      amount: 10.55,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Expense-3',
      category: Category.travel,
      amount: 15.05,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Expense-4',
      category: Category.leisure,
      amount: 20.55,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Analytics', style: TextStyle(color: Colors.white)),
          SizedBox(height: 200, child: ExpenseList(expenses: expensesList)),
        ],
      ),
    );
  }
}
