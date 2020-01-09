import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_ile_dil/app_localizations.dart';
import 'package:flutter_bloc_ile_dil/bloc_localization.dart';
import 'package:flutter_bloc_ile_dil/lang_utils.dart';
import 'package:flutter_bloc_ile_dil/page_home.dart';

class PageSplash extends StatefulWidget {
  @override
  _PageSplashState createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
//      final String language = await LangUtils.getLanguage();
//      BlocProvider.of<BlocLocalization>(context).add(
//        language == "tr" ? Language.TR : Language.EN,
//      );
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => PageHome(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
//    AppLocalizations.of(context);
    return Scaffold(
      body: SizedBox(),
    );
  }
}
