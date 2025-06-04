import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatefulWidget {
  late String title;
  late double amount;
  late DateTime date;
  late Category category;
  late String id;
  ValueChanged<List<Expense>> func;
  List<Expense> el;
  ExpenseCard({
    super.key,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
    required this.func,
    required this.el,
    required this.id,
  });
  @override
  State<ExpenseCard> createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  var iconMap = {
    Category.work: Icon(Icons.laptop, color: Colors.white),
    Category.food: Icon(Icons.food_bank, color: Colors.white),
    Category.travel: Icon(Icons.airplane_ticket_outlined, color: Colors.white),
    Category.leisure: Icon(
      Icons.airline_seat_recline_extra,
      color: Colors.white,
    ),
  };
  var textMap = {
    Category.work: 'Work',
    Category.leisure: 'Leisure',
    Category.food: 'Food',
    Category.travel: 'Travel',
  };
  @override
  Widget build(BuildContext context) {
    final icon =
        iconMap[widget.category] ??
        const Icon(Icons.help_outline, color: Colors.white);
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        elevation: 30,
        surfaceTintColor: Colors.grey,
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.title}',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed:
                          () => {
                            widget.func(
                              List.from(widget.el)
                                ..removeWhere((e) => e.id == widget.id),
                            ),
                          },
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text('Category: ', style: TextStyle(color: Colors.white)),
                  icon,
                  Text(
                    ' ${textMap[widget.category]}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Text(
                'Amount: \$ ${widget.amount.toString()}',
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
