import 'package:flutter/material.dart';
import 'package:salaris_app/styles.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;

  StatCard({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 190.0,
      height: 120.0,
      child: Card(
        margin: EdgeInsets.only(
          left: 19.0,
          bottom: 28.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 18.0, top: 18.0, right: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: UiTextStyles.montserrat16ptSemiBoldRed,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  '$value',
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
