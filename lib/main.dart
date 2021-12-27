import 'package:advent13_flutter_performance/widget/address_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// run generator from command line with:
// flutter pub pub run build_runner watch --delete-conflicting-outputs
class MyApp extends StatelessWidget {
  final String appTitle = 'MainPage';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddressWidget(),
      );
}
