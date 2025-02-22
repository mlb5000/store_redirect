import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Launch App Redirect')),
        body: new Center(
          child: new ElevatedButton(
            child: new Text("Redirect App"),
            onPressed: () {
              StoreRedirect.redirect(
                androidAppId: "io.github.x_wei.flutter_catalog",
                iOSAppId: "6482293361",
              );
            },
          ),
        ),
      ),
    );
  }
}
