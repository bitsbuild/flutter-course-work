import 'package:expense_tracker/expense_card.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  final List<Expense> expenses;
  ValueChanged<List<Expense>> func;
  ExpenseList({super.key, required this.expenses, required this.func});
  @override
  State<ExpenseList> createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.expenses.length,
      itemBuilder: (ctx, index) {
        return Center(
          child: ExpenseCard(
            func: widget.func,
            id: widget.expenses[index].id,
            el: widget.expenses,
            title: widget.expenses[index].title,
            category: widget.expenses[index].category,
            amount: widget.expenses[index].amount,
            date: widget.expenses[index].date,
          ),
        );
      },
    );
  }
}
