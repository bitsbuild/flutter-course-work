import 'package:uuid/uuid.dart';

enum Category { food, work, leisure, travel }

class Expense {
  late String title;
  late double amount;
  late Category category;
  late String id;
  Expense({required this.title, required this.category, required this.amount})
    : id = Uuid().v4();
}
