import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salaris_app/blocs/salary_bloc.dart';
import 'package:salaris_app/components/custom_bottom_navbar.dart';
import 'package:salaris_app/components/hour_entry_card.dart';
import 'package:salaris_app/components/stat_card.dart';
import '../styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SalaryBloc salaryBloc = Provider.of<SalaryBloc>(context);

    return SafeArea(
      child: Scaffold(
        // Bottom navigation bar
        bottomNavigationBar: CustomBottomNavbar(),
        // Body
        body: Stack(
          children: <Widget>[
            Container(
              color: UiColors.spaceCadet,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Welkom terug',
                          style: UiTextStyles.montserrat27ptSemiBoldWhite,
                        ),
                        Icon(
                          Icons.settings,
                          color: UiColors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Container(
                    height: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        StatCard(),
                        StatCard(),
                        StatCard(),
                      ],
                    ),
                  ),
                ],
              ),
              height: 250.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: BoxDecoration(
                  color: UiColors.backgroundGrey,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 35.0,
                    top: 40.0,
                    right: 35.0,
                  ),
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildListDelegate(
                          salaryBloc.salaryEntries
                              .map(
                                (e) => HourEntry(
                                  salaryEntry: e,
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
