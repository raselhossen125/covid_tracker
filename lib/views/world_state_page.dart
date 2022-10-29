// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:covid_tracker/util/colors.dart';
import 'package:covid_tracker/util/style.dart';
import 'package:covid_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatePage extends StatefulWidget {
  static const routeName = 'world-state';

  @override
  State<WorldStatePage> createState() => _WorldStatePageState();
}

class _WorldStatePageState extends State<WorldStatePage>
    with TickerProviderStateMixin {
  late final _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 5))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.07),
            SizedBox(
              height: size.height * 0.22,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.18,
                    child: PieChart(
                      dataMap: {
                        'Total' : 20,
                        'Recover' : 15,
                        'Death' : 5,
                      },
                      animationDuration: Duration(milliseconds: 1200),
                      chartType: ChartType.ring,
                      legendOptions: LegendOptions(
                        legendPosition: LegendPosition.left
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              height: size.height * 0.52,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Column(
                        children: [
                          CustomCard(title: 'Total', value: '100'),
                          Divider(),
                          CustomCard(title: 'Total', value: '100'),
                          Divider(),
                          CustomCard(title: 'Total', value: '100'),
                          Divider(),
                          CustomCard(title: 'Total', value: '100'),
                          Divider(),
                          CustomCard(title: 'Total', value: '100'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              height: size.height * 0.13,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black,
                      ),
                      child: Text('Track Countryes', style: smallBoldW,),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
