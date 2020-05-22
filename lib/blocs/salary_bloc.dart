import 'package:flutter/material.dart';
import 'package:salaris_app/models/salary_model.dart';

class SalaryBloc extends ChangeNotifier {
  List<SalaryModel> _salaryEntries = [
    SalaryModel(
      hoursWorked: 10.0,
      dateWorked: DateTime.now(),
      hourlyWage: 5.0,
    ),
    SalaryModel(
      hoursWorked: 24.0,
      dateWorked: DateTime.now(),
      hourlyWage: 416.0,
    ),
    SalaryModel(
      hoursWorked: 24.0,
      dateWorked: DateTime.now(),
      hourlyWage: 416.0,
    ),
    SalaryModel(
      hoursWorked: 24.0,
      dateWorked: DateTime.now(),
      hourlyWage: 416.0,
    )
  ];

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
