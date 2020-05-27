import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:provider/provider.dart';
import 'package:salaris_app/blocs/salary_bloc.dart';
import 'package:salaris_app/models/salary_model.dart';
import 'package:salaris_app/styles.dart';

class SalaryEntryAdd extends StatefulWidget {
  @override
  _SalaryEntryAddState createState() => _SalaryEntryAddState();
}

class _SalaryEntryAddState extends State<SalaryEntryAdd> {
  final hoursWorkedController = TextEditingController();
  final hourlyWageController = TextEditingController();
  SalaryModel salaryEntry = SalaryModel();

  _hoursWorkedUpdate() {
    setState(() {
      salaryEntry.hoursWorked =
          num.tryParse(hoursWorkedController.text)?.toDouble();
    });
    print(salaryEntry.hoursWorked);
  }

  _hourlyWageUpdate() {
    setState(() {
      salaryEntry.hourlyWage =
          num.tryParse(hourlyWageController.text)?.toDouble();
    });
    print(salaryEntry.hourlyWage);
  }

  @override
  void dispose() {
    hoursWorkedController.dispose();
    hourlyWageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    hoursWorkedController.addListener(_hoursWorkedUpdate);
    hourlyWageController.addListener(_hourlyWageUpdate);
  }

  @override
  Widget build(BuildContext context) {
    final SalaryBloc salaryBloc = Provider.of<SalaryBloc>(context);

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.zero,
      child: Container(
        child: Center(
          child: Container(
            height: 380.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(22.0),
              ),
              color: UiColors.spaceCadet,
            ),
            margin: EdgeInsets.symmetric(horizontal: 36.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              children: <Widget>[
                // Date worked ----------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Date worked',
                      style: UiTextStyles.montserrat16ptSemiBoldWhite,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: UiColors.white,
                      ),
                      width: 120.0,
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 7.0,
                        ),
                        onPressed: () async {
                          DateTime tempDateTime = await showRoundedDatePicker(
                            context: context,
                            initialDate:
                                salaryEntry.dateWorked ?? DateTime.now(),
                            firstDate: DateTime(DateTime.now().year - 1),
                            lastDate: DateTime(DateTime.now().year + 1),
                            borderRadius: 16,
                          );
                          setState(() {
                            salaryEntry.dateWorked = tempDateTime;
                          });
                        },
                        child: (salaryEntry.dateWorked == null)
                            ? Text('Pick',
                                style: UiTextStyles.montserrat16ptSemiBoldRed)
                            : Text(
                                '${salaryEntry.dateWorked.month}/${salaryEntry.dateWorked.day}',
                                style: UiTextStyles.montserrat16ptSemiBoldRed,
                              ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Hours worked ----------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hours worked',
                      style: UiTextStyles.montserrat16ptSemiBoldWhite,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: UiColors.white,
                      ),
                      width: 120.0,
                      child: TextFormField(
                        controller: hoursWorkedController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: '0.0',
                          hintStyle: UiTextStyles.montserrat16ptSemiBoldRed,
                          filled: true,
                          contentPadding: EdgeInsets.all(14),
                          fillColor: UiColors.white,
                        ),
                        textAlign: TextAlign.center,
                        style: UiTextStyles.montserrat16ptSemiBoldRed,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Hourly wage ----------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hourly wage',
                      style: UiTextStyles.montserrat16ptSemiBoldWhite,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: UiColors.white,
                      ),
                      width: 120.0,
                      child: TextFormField(
                        controller: hourlyWageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: '0.0',
                          hintStyle: UiTextStyles.montserrat16ptSemiBoldRed,
                          filled: true,
                          contentPadding: EdgeInsets.all(14),
                          fillColor: UiColors.white,
                        ),
                        textAlign: TextAlign.center,
                        style: UiTextStyles.montserrat16ptSemiBoldRed,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: UiColors.redSalsa,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          if (!(salaryEntry.dateWorked == null ||
                              salaryEntry.hoursWorked == null ||
                              salaryEntry.hourlyWage == null)) {
                            salaryBloc.add(salaryEntry);
                            Navigator.pop(context);
                          }
                        },
                        child: Text(
                          'Add',
                          style: UiTextStyles.montserrat16ptSemiBoldWhite,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        color: UiColors.white,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Close',
                          style: UiTextStyles.montserrat16ptSemiBoldRed,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
