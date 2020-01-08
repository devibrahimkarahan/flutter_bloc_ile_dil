import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_ile_dil/app_localizations.dart';

enum Language { EN, TR }

class BlocLocalization extends Bloc<Language, Locale> {
  @override
  Locale get initialState => Locale("en");

  @override
  Stream<Locale> mapEventToState(Language event) async* {
    Locale locale = event == Language.TR ? Locale("tr") : Locale("en");
    if (state != locale) {
      AppLocalizations.updateLocale(locale);
    }
    yield locale;
  }
}
