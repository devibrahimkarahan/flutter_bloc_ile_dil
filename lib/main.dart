import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_ile_dil/app_localizations.dart';
import 'package:flutter_bloc_ile_dil/bloc_localization.dart';
import 'package:flutter_bloc_ile_dil/page_home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final BlocLocalization blocLocalization = BlocLocalization();
  Locale currentLocale = Locale("en");

  @override
  void dispose() {
    blocLocalization.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocLocalization>.value(
      value: blocLocalization,
      child: BlocListener(
        bloc: blocLocalization,
        listener: (context, locale) {
          setState(() {
            currentLocale = locale;
          });
          print(">> $currentLocale");
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PageHome(),
          locale: currentLocale,
          supportedLocales: [Locale("en"), Locale("tr")],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ),
      ),
    );
  }
}
