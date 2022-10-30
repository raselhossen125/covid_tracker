// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, unused_local_variable, unnecessary_null_comparison

import 'package:covid_tracker/util/colors.dart';
import 'package:covid_tracker/util/style.dart';
import 'package:covid_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import '../../provider/worldState_provider.dart';
import '../countryList/country_list_page.dart';

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
    final provider = Provider.of<WorldStateProvider>(context);

    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.r),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 40.h),
              FutureBuilder(
                future: provider.getWorldStateRecods(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 170,
                          child: PieChart(
                            dataMap: {
                              'Total':
                                  double.parse(snapshot.data!.cases.toString()),
                              'Recover': double.parse(
                                  snapshot.data!.recovered.toString()),
                              'Death':
                                  double.parse(snapshot.data!.deaths.toString()),
                            },
                            chartValuesOptions: ChartValuesOptions(
                                showChartValuesInPercentage: true),
                            animationDuration: Duration(milliseconds: 1200),
                            chartType: ChartType.ring,
                            legendOptions: LegendOptions(
                                legendPosition: LegendPosition.left),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.r),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3.0,
                                      blurRadius: 3.0)
                                ],
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Column(
                                children: [
                                  CustomCard(
                                      title: 'Total Cases',
                                      value: snapshot.data!.cases.toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Total Ricovered',
                                      value: snapshot.data!.recovered.toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Total Deaths',
                                      value: snapshot.data!.deaths.toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Active',
                                      value: snapshot.data!.active.toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Critical',
                                      value: snapshot.data!.critical.toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Today Cases',
                                      value:
                                          snapshot.data!.todayCases.toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Today Ricovered',
                                      value: snapshot.data!.todayRecovered
                                          .toString()),
                                  Divider(),
                                  CustomCard(
                                      title: 'Today Deaths',
                                      value:
                                          snapshot.data!.todayDeaths.toString()),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.r),
                          child: InkWell(
                            onTap: () => Navigator.of(context)
                                .pushNamed(CountryListPage.routeName),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: Colors.black,
                              ),
                              child: Text(
                                'Track Countries',
                                style: smallBoldW,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    );
                  } else {
                    return SpinKitFadingCircle(
                      color: Colors.black,
                      controller: _controller,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
