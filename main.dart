import 'package:flutter/material.dart';
import 'package:start_it/views/home/home_view.dart';
//import 'package:start_it/views/home/home_view.dart';

//import 'package:start_it/views/home/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView());
  }
}
