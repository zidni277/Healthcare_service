import '../../features/insurance/models/expense_model.dart';

class ExpenseRepository {
  List<ExpenseModel> fetchExpenses() {
    return [
      ExpenseModel(category: "Therapy", amount: 21800, date: DateTime.now()),
      // Add more expense data
    ];
  }
}
