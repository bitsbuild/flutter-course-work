import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/tracker_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseTracker());
}

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: ExpenseTrackerScaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExpenseTrackerScaffold extends StatefulWidget {
  const ExpenseTrackerScaffold({super.key});
  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffold();
}

class _ExpenseTrackerScaffold extends State<ExpenseTrackerScaffold> {
  late Widget wid;
  @override
  void initState() {
    super.initState();
    wid = TrackerPage(fun: widgetChanger, expensesList: expensesList);
  }

  void widgetChanger(Widget w) {
    setState(() {
      wid = w;
    });
  }

  List<Expense> expensesList = [
    Expense(
      title: 'Had A Pizza',
      category: Category.food,
      amount: 5.05,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Purchased A Wireless Keyboard',
      category: Category.work,
      amount: 10.55,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Train Ticket To Churchgate',
      category: Category.travel,
      amount: 15.05,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Adventure Park Ticket',
      category: Category.leisure,
      amount: 20.55,
      date: DateTime.now(),
    ),
  ];
  String title = '';
  double amount = 00.00;
  late DateTime date;
  Category category = Category.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Container(color: Colors.black),
        title: Text(
          'Flutter Expense Tracker',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              tooltip: 'Add Your Expense',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: true,
                  builder: (ctx) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Add Your Expense',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                onChanged:
                                    (str) => {
                                      setState(() {
                                        title = str;
                                      }),
                                    },
                                style: TextStyle(color: Colors.white),
                                // maxLength: 50,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  label: Text('Enter Expense Title'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: TextField(
                                onChanged:
                                    (integer) => {
                                      setState(() {
                                        amount = double.tryParse(integer) ?? 0;
                                      }),
                                    },
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  label: Text('Enter Expense Amount'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: 'Chose Expense Category',
                                  labelStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(),
                                ),
                                dropdownColor: Colors.black,
                                style: TextStyle(color: Colors.white),
                                isExpanded: true,
                                enableFeedback: true,
                                items: [
                                  DropdownMenuItem(
                                    value: 'Food',
                                    child: Text('Food'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Travel',
                                    child: Text('Travel'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Leisure',
                                    child: Text('Leisure'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Work',
                                    child: Text('Work'),
                                  ),
                                ],
                                onChanged:
                                    (str) => {
                                      if (str == 'Food')
                                        {
                                          setState(() {
                                            category = Category.food;
                                          }),
                                        }
                                      else if (str == 'Work')
                                        {
                                          setState(() {
                                            category = Category.work;
                                          }),
                                        }
                                      else if (str == 'Leisure')
                                        {
                                          setState(() {
                                            category = Category.leisure;
                                          }),
                                        }
                                      else if (str == 'Travel')
                                        {
                                          setState(() {
                                            category = Category.travel;
                                          }),
                                        },
                                    },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                ),
                                onPressed:
                                    () => {
                                      setState(() {
                                        expensesList.add(
                                          Expense(
                                            title: title,
                                            amount: amount,
                                            category: category,
                                            date: DateTime.now(),
                                          ),
                                        );
                                        wid = TrackerPage(
                                          fun: widgetChanger,
                                          expensesList: expensesList,
                                        );
                                      }),

                                      Navigator.of(context).pop(),
                                    },
                                child: Text(
                                  'Create Expense Record',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
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
              backgroundColor: Colors.black,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(padding: const EdgeInsets.all(25.0), child: wid),
      ),
    );
  }
}
