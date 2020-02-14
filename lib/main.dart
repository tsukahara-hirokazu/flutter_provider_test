import 'package:flutter/material.dart';
import 'package:guuchiru_app/providers/counter.dart';
import 'package:guuchiru_app/providers/counter10.dart';
import 'package:guuchiru_app/screens/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => Counter10()),
      ],
      child: MaterialApp(
        title: "GuuchiRu",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.tealAccent,
          accentColor: Colors.blueAccent,
        ),
        home: Home(),
      ),
    );
  }
}
//
