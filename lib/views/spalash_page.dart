// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_field

import 'package:covid_tracker/util/colors.dart';
import 'package:covid_tracker/util/style.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:get/get.dart';
import '../route/my_app_route.dart';

class SpalashPage extends StatefulWidget {
  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage>
    with TickerProviderStateMixin {
  late final _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))
        ..repeat();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(MyRoute.worldStatePageRoute);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              child: Image.asset(
                'images/virus.png',
                height: 150,
                width: 150,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
            SizedBox(
              height: size.height * 0.15
            ),
            Text(
              'Covid 19',
              style: mediamBold,
            ),
            Text(
              'Tracker App',
              style: mediamBold,
            ),
          ],
        ),
      ),
    );
  }
}