import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatefulWidget {
  late String title;
  late double amount;
  late DateTime date;
  late Category category;
  ExpenseCard({
    super.key,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
  });
  @override
  State<ExpenseCard> createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 10,
        surfaceTintColor: Colors.yellow,
        color: Colors.black,
        shape: Border.all(width: 2, style: BorderStyle.solid),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Title: ${widget.title}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Category: ${widget.category.toString()}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Amount: ${widget.amount.toString()}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Date And Time: ${widget.date.toString()}',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
