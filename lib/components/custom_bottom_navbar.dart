import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salaris_app/blocs/salary_bloc.dart';
import 'package:salaris_app/models/salary_model.dart';
import 'package:salaris_app/styles.dart';

class CustomBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SalaryBloc salaryBloc = Provider.of<SalaryBloc>(context);

    return Container(
      height: 90.0,
      decoration: BoxDecoration(
        color: UiColors.white,
        border: Border(
          top: BorderSide(
            color: UiColors.spaceCadet,
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: UiColors.spaceCadet,
            ),
            iconSize: 35.0,
            onPressed: null,
          ),
          Container(
            width: 60.0,
            height: 60.0,
            child: FloatingActionButton(
              onPressed: () {
                salaryBloc.add(
                  SalaryModel(
                      hoursWorked: 11.0,
                      dateWorked: DateTime.now(),
                      hourlyWage: 6.0),
                );
              },
              backgroundColor: UiColors.spaceCadet,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21.0),
              ),
              child: Icon(
                Icons.add,
                color: UiColors.backgroundGrey,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.history,
              color: UiColors.spaceCadet,
            ),
            iconSize: 35.0,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
