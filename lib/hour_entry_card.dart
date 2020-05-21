import 'package:flutter/material.dart';
import 'package:salaris_app/styles.dart';

class HourEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    '07/13',
                    style: UiTextStyles.montserrat20ptSemiBoldRed,
                  ),
                  Text(
                    '10 uren gewerkt',
                    style: UiTextStyles.montserrat16ptSemiBoldSpaceCadet,
                  ),
                ],
              ),
              Text(
                '€ 60,00',
                style: UiTextStyles.montserrat30ptBoldSpaceCadet,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
