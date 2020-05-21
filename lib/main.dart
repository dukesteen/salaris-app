import 'package:flutter/material.dart';
import 'package:salaris_app/blocs/salary_bloc.dart';
import 'package:salaris_app/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SalaryBloc>(
          create: (context) => SalaryBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Salaris',
        theme: ThemeData(
            textTheme: TextTheme(
          headline1: TextStyle(),
        )),
        home: HomePage(),
      ),
    );
  }
}
