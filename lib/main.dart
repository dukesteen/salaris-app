import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:salaris_app/blocs/salary_bloc.dart';
import 'package:salaris_app/pages/home.dart';
import 'package:provider/provider.dart';
import 'package:salaris_app/pages/salary_entry_add.dart';

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
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
        ],
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/add': (context) => SalaryEntryAdd(),
        },
      ),
    );
  }
}
