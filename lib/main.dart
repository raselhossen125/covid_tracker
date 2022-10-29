// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/views/spalash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/world_state_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SpalashPage.routeName,
      routes: {
        SpalashPage.routeName: (context) => SpalashPage(),
        WorldStatePage.routeName: (context) => WorldStatePage(),
      },
    );
  }
}