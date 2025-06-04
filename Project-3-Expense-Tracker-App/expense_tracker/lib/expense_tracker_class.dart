import 'package:uuid/uuid.dart';

class Expense {
  String id;
  String title;
  String category;
  double amount;
  Expense({required this.title, required this.category, required this.amount})
    : id = Uuid().v4();
}
