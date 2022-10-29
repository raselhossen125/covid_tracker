// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_field

import 'package:covid_tracker/util/colors.dart';
import 'package:covid_tracker/util/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'worldState/world_state_page.dart';

class SpalashPage extends StatefulWidget {
  static const routeName = 'spalash';

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage>
    with TickerProviderStateMixin {
  late final _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 5))
        ..repeat();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(WorldStatePage.routeName);
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
                height: 150.h,
                width: 150.w,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
            SizedBox(height: size.height * 0.15),
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
