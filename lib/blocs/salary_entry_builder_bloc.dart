import 'package:flutter/material.dart';
import 'package:salaris_app/models/salary_model.dart';

class SalaryEntryBuilderBloc extends ChangeNotifier {
  SalaryModel _salaryEntry;

  SalaryModel get salaryEntry => _salaryEntry;

  setHoursWorked(double hoursWorked) {
    _salaryEntry.hoursWorked = hoursWorked;
    notifyListeners();
  }

  setDateWorked(DateTime dateWorked) {
    _salaryEntry.dateWorked = dateWorked;
    notifyListeners();
  }

  setHourlyWage(double hourlyWage) {
    _salaryEntry.hourlyWage = hourlyWage;
    notifyListeners();
  }

  build() {
    if (_salaryEntry.dateWorked == null ||
        _salaryEntry.hoursWorked == null ||
        _salaryEntry.hourlyWage == null) {
      return Exception("You must set every value");
    } else {
      var temp = _salaryEntry;
      _salaryEntry = null;
      return temp;
    }
  }
}
