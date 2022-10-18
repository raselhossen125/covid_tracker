// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/util/colors.dart';
import 'package:flutter/material.dart';

class WorldStatePage extends StatelessWidget {
  const WorldStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: cardColor,
        title: Text('World state'),
      ),
    );
  }
}
