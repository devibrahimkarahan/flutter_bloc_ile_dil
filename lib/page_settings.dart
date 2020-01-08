import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_ile_dil/app_localizations.dart';
import 'package:flutter_bloc_ile_dil/bloc_localization.dart';

class PageSettings extends StatefulWidget {
  @override
  _PageSettingsState createState() => _PageSettingsState();
}

class _PageSettingsState extends State<PageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.getString("settings")),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                BlocProvider.of<BlocLocalization>(context).add(Language.TR);
              },
              child: Text("TR"),
            ),
            RaisedButton(
              onPressed: () {
                BlocProvider.of<BlocLocalization>(context).add(Language.EN);
              },
              child: Text("EN"),
            ),
          ],
        ),
      ),
    );
  }
}
