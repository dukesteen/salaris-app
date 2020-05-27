import 'package:flutter/material.dart';
import 'package:salaris_app/models/salary_model.dart';

class SalaryBloc extends ChangeNotifier {
  List<SalaryModel> _salaryEntries = [];

  List<SalaryModel> get salaryEntries => _salaryEntries;

  add(SalaryModel entry) {
    _salaryEntries.add(entry);
    notifyListeners();
  }

  remove(SalaryModel entry) {
    _salaryEntries.remove(entry);
    notifyListeners();
  }
}
