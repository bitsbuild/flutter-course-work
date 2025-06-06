import 'package:expense_tracker/expense_tracker_class.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

class ExpenseTrackerScaffold extends StatefulWidget {
  const ExpenseTrackerScaffold({super.key});
  @override
  State<ExpenseTrackerScaffold> createState() => _ExpenseTrackerScaffoldState();
}

class _ExpenseTrackerScaffoldState extends State<ExpenseTrackerScaffold> {
  List<Color> col = [Color(0xff41295a), Color(0xff2F0743)];
  String categoryChoice = 'Travel';
  late String titleChoice;
  late double amountChoice;
  late Category category;
  List<Expense> li = [
    Expense(
      title: 'Trekking',
      category: Category.leisure,
      amount: 10.01,
      date: DateTime.now(),
    ),
  ];
  late DateTime date;
  DateTime? pickedDate;
  var categoryMap = {
    Category.food: Icons.local_pizza_rounded,
    Category.work: Icons.laptop,
    Category.travel: Icons.train,
    Category.leisure: Icons.airline_seat_recline_extra,
  };
  @override
  Widget build(BuildContext context1) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        actions: [
          IconButton(
            onPressed:
                () => {
                  showModalBottomSheet(
                    isScrollControlled: false,
                    context: context1,
                    builder: (ctx) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return SizedBox.expand(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.00),
                                    child: Text(
                                      'Enter Transaction Details',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      onChanged: (st) {
                                        setState(() {
                                          titleChoice = st.toString();
                                        });
                                      },
                                      decoration: InputDecoration(
                                        label: Text('Enter Expense Title'),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 5,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ), //Title
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (st) {
                                        setState(() {
                                          amountChoice =
                                              double.tryParse(st) ?? 0.00;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        label: Text('Enter Expense Amount'),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 5,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value: categoryChoice,
                                      items: [
                                        DropdownMenuItem(
                                          value: 'Food',
                                          child: Text('Food'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Work',
                                          child: Text('Work'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Travel',
                                          child: Text('Travel'),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Leisure',
                                          child: Text('Leisure'),
                                        ),
                                      ],
                                      onChanged: (st) {
                                        setState(() {
                                          categoryChoice = st.toString();
                                        });
                                      },
                                    ),
                                  ), //Category
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: OutlinedButton(
                                      style: ButtonStyle(
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed:
                                          () async => {
                                            pickedDate =
                                                await showDatePickerDialog(
                                                  context: context,
                                                  minDate: DateTime(2000, 1, 1),
                                                  maxDate: DateTime(
                                                    2023,
                                                    12,
                                                    31,
                                                  ),
                                                ),
                                            date = pickedDate ?? DateTime.now(),
                                          },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Pick The Date Of Transaction',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                          Icon(
                                            Icons.calendar_month,
                                            color: Colors.black,
                                          ),
                                        ],
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
          padding: const EdgeInsets.all(15.0),
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
                      return Dismissible(
                        key: ValueKey(li[index].id),
                        onDismissed: (DismissDirection direction) {
                          List.from(
                            li,
                          ).removeWhere((e) => e.id == li[index].id);
                        },
                        child: Padding(
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
                                        'Date: ${li[index].date.toString().split(' ')[0]}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Category: ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(categoryMap[li[index].category]),
                                        ],
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
    );
  }
}
