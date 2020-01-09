import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_ile_dil/app_localizations.dart';
import 'package:flutter_bloc_ile_dil/lang_utils.dart';

enum Language { EN, TR }

class BlocLocalization extends Bloc<Language, Locale> {
  @override
  Locale get initialState => Locale("en");

  @override
  Stream<Locale> mapEventToState(Language event) async* {
    Locale locale = event == Language.TR ? Locale("tr") : Locale("en");
//    AppLocalizations.updateLocale(locale);
    LangUtils.saveLanguage(locale);
    yield locale;
  }
}
