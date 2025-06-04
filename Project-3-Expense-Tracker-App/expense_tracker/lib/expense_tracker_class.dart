import 'package:uuid/uuid.dart';

enum Category { food, travel, leisure, work }

class Expense {
  String id;
  String title;
  Category category;
  double amount;
  Expense({required this.title, required this.category, required this.amount})
    : id = Uuid().v4();
}
