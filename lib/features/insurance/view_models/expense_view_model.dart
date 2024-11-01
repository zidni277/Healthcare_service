import '../models/expense_model.dart';

class ExpenseViewModel {
  List<ExpenseModel> getExpenses() {
    // Mock data for example
    return [
      ExpenseModel(category: "Therapy", amount: 21800, date: DateTime.now()),
      // Add more expense data
    ];
  }
}
