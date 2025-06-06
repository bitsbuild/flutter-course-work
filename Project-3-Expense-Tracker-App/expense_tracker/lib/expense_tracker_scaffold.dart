import 'package:expense_tracker/expense_tracker_class.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

class ExpenseTrackerScaffold extends StatefulWidget {
  final ValueChanged<List<Expense>> func;
  final List<Expense> li;

  const ExpenseTrackerScaffold({
    super.key,
    required this.func,
    required this.li,
  });

  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffoldState();
}

class _ExpenseTrackerScaffoldState extends State<ExpenseTrackerScaffold> {
  List<Color> col = [const Color(0xff41295a), const Color(0xff2F0743)];

  final categoryMap = {
    Category.food: Icons.local_pizza_rounded,
    Category.work: Icons.laptop,
    Category.travel: Icons.train,
    Category.leisure: Icons.airline_seat_recline_extra,
  };

  void openBottomSheet(BuildContext context) {
    String categoryChoice = 'Travel';
    String titleChoice = '';
    double amountChoice = 0;
    DateTime? pickedDate;

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: MediaQuery.of(ctx).viewInsets,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Enter Transaction Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        onChanged:
                            (val) => setModalState(() => titleChoice = val),
                        decoration: const InputDecoration(
                          labelText: 'Enter Expense Title',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged:
                            (val) => setModalState(
                              () => amountChoice = double.tryParse(val) ?? 0,
                            ),
                        decoration: const InputDecoration(
                          labelText: 'Enter Expense Amount',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: categoryChoice,
                        items:
                            ['Food', 'Work', 'Travel', 'Leisure']
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                        onChanged:
                            (val) => setModalState(
                              () => categoryChoice = val ?? 'Travel',
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: OutlinedButton(
                        onPressed: () async {
                          pickedDate = await showDatePickerDialog(
                            context: context,
                            minDate: DateTime(2000),
                            maxDate: DateTime(2100),
                          );
                          setModalState(() {});
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Pick The Date Of Transaction'),
                            Icon(Icons.calendar_month),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlinedButton(
                        onPressed: () {
                          if (titleChoice.trim().isEmpty || amountChoice <= 0) {
                            Navigator.pop(context);
                            return;
                          }

                          final newExpense = Expense(
                            title: titleChoice,
                            amount: amountChoice,
                            date: pickedDate ?? DateTime.now(),
                            category: switch (categoryChoice) {
                              'Food' => Category.food,
                              'Work' => Category.work,
                              'Travel' => Category.travel,
                              'Leisure' => Category.leisure,
                              _ => Category.leisure,
                            },
                          );

                          final newList = List<Expense>.from(widget.li)
                            ..add(newExpense);
                          widget.func(newList);
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Create Transaction',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box, size: 30, color: Colors.white),
            onPressed: () => openBottomSheet(context),
          ),
        ],
        title: const Text(
          'Flutter Expense Tracker',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Analytics',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: widget.li.length,
                itemBuilder: (context, index) {
                  final item = widget.li[index];
                  return Dismissible(
                    key: ValueKey(item.id),
                    direction: DismissDirection.horizontal,
                    onDismissed: (_) {
                      final updatedList = List<Expense>.from(widget.li)
                        ..removeAt(index);
                      widget.func(updatedList);
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date: ${item.date.toString().split(' ')[0]}'),
                            Row(
                              children: [
                                const Text('Category: '),
                                Icon(categoryMap[item.category]),
                              ],
                            ),
                            Text('Amount: \$${item.amount.toStringAsFixed(2)}'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
