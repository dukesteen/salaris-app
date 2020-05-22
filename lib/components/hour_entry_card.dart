import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:salaris_app/models/salary_model.dart';
import 'package:salaris_app/styles.dart';

class HourEntry extends StatelessWidget {
  final SalaryModel salaryEntry;
  final DateFormat dateFormatter = DateFormat('MM/dd');
  final currencyFormatter = new NumberFormat("#,##0.00", "en_US");
  final currencyFormat1kPlus = new NumberFormat("#,##0", "en_US");

  HourEntry({this.salaryEntry});

  @override
  Widget build(BuildContext context) {
    var currencyString;
    var salary = salaryEntry.hourlyWage * salaryEntry.hoursWorked;

    if (salary > 1000) {
      currencyString = currencyFormat1kPlus.format(salary);
    } else {
      currencyString = currencyFormatter.format(salary);
    }

    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        margin: EdgeInsets.only(bottom: 15.0),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    dateFormatter.format(salaryEntry.dateWorked),
                    style: UiTextStyles.montserrat20ptSemiBoldRed,
                  ),
                  Text(
                    '${salaryEntry.hoursWorked} uren ',
                    style: UiTextStyles.montserrat16ptSemiBoldSpaceCadet,
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  '€ ' + currencyString,
                  style: UiTextStyles.montserrat30ptBoldSpaceCadet,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
