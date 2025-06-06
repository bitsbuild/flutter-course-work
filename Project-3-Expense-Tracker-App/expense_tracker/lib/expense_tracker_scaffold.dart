import 'package:expense_tracker/expense_tracker_class.dart';
import 'package:flutter/material.dart';

class ExpenseTrackerScaffold extends StatefulWidget {
  const ExpenseTrackerScaffold({super.key});
  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffoldState();
}

class _ExpenseTrackerScaffoldState extends State<ExpenseTrackerScaffold> {
  List<Color> col = [Color(0xff8E0E00), Color(0xff1F1C18)];
  List<Expense> li = [
    Expense(
      title: 'Trekking',
      category: Category.leisure,
      amount: 10.01,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
            onPressed:
                () => {
                  showModalBottomSheet(
                    isScrollControlled: false,
                    context: context,
                    builder: (ctx) {
                      return SizedBox.expand(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ),
                      );
                    },
                  ),
                },
            icon: Icon(Icons.add_box, color: Colors.white, size: 30),
          ),
        ],
        title: Text(
          'Flutter Expense Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: col),
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        '1-1-1-1-1:::::Analytics:::::1-1-1-1-1',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: li.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: SizedBox(
                              height: 170,
                              width: double.infinity,
                              child: Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          '${li[index].title}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Date: ${li[index].date}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Category: ${li[index].category.toString()}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Amount: \$${li[index].amount}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
          ),
        ),
      ),
    );
  }
}
