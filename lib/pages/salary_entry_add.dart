import 'package:flutter/material.dart';
import 'package:salaris_app/styles.dart';

class SalaryEntryAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.zero,
      child: Container(
        //color: UiColors.richBlack.withOpacity(0.3),
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
                        onPressed: null,
                        child: Text(
                          'Pick',
                          style: UiTextStyles.montserrat16ptSemiBoldRed,
                        ),
                      ),
                    )
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
                      child: FlatButton(
                        onPressed: null,
                        child: Text(
                          'Pick',
                          style: UiTextStyles.montserrat16ptSemiBoldRed,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                        onPressed: null,
                        child: Text(
                          'Pick',
                          style: UiTextStyles.montserrat16ptSemiBoldRed,
                        ),
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
                        onPressed: null,
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
