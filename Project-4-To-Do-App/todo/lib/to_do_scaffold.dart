import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/to_do_view.dart';

class ToDoScaffold extends StatefulWidget {
  const ToDoScaffold({super.key});
  @override
  State<ToDoScaffold> createState() => _ToDoScaffold();
}

class _ToDoScaffold extends State<ToDoScaffold> {
  List<String> toDoList = [
    'Test-1',
    'Test-2',
    'Test-3',
    'Test-4',
    'Test-5',
    'Test-6',
    'Test-7',
    'Test-8',
    'Test-9',
    'Test-10',
  ];
  List<Color> colorTheme = [Color(0xff000000), Color(0xff000000)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              onPressed: () {},
              shape: Border.all(color: Colors.grey, width: 3),
              backgroundColor: Colors.black,
              child: Icon(Icons.add, color: Colors.grey),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            'ToDo',
            style: GoogleFonts.robotoSlab(
              textStyle: TextStyle(
                fontSize: 75,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: colorTheme),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: colorTheme)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(child: ToDoView(toDoList: toDoList)),
        ),
      ),
    );
  }
}
