import 'package:flutter/material.dart';
import 'package:flutter_bloc_ile_dil/app_localizations.dart';
import 'package:flutter_bloc_ile_dil/page_settings.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.getString("home")),
        actions: <Widget>[
          IconButton(
            tooltip: AppLocalizations.getString("settings"),
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => PageSettings(),
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(AppLocalizations.getString("hello_world")),
      ),
    );
  }
}
