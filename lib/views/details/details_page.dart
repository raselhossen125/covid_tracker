// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:covid_tracker/util/colors.dart';
import 'package:covid_tracker/util/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_card.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = 'details';

  String countryName;
  int totalCases;
  int totalRecovered;
  int totalDeaths;
  int active;
  int critical;
  int todayCases;
  int todayRecovered;
  int todayDeaths;
  int population;
  String flag;

  DetailsPage({
    required this.countryName,
    required this.totalCases,
    required this.totalRecovered,
    required this.totalDeaths,
    required this.active,
    required this.critical,
    required this.todayCases,
    required this.todayRecovered,
    required this.todayDeaths,
    required this.population,
    required this.flag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        foregroundColor: Colors.black,
        title: Text(countryName),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.r),
            child: Container(
              decoration: myDecoration,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    Text('Country Information', style: appColor18w700),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.r),
                      child: Divider(color: appColor.withOpacity(0.60)),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      decoration: myDecoration,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.network(flag, height: 100),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    CustomCard(title: 'Name', value: countryName),
                    Divider(),
                    CustomCard(
                        title: 'Population', value: population.toString()),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.r),
            child: Container(
              decoration: myDecoration,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    Text('Today Information', style: appColor18w700),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.r),
                      child: Divider(color: appColor.withOpacity(0.60)),
                    ),
                    SizedBox(height: 5.h),
                    CustomCard(
                        title: 'Today Cases', value: todayCases.toString()),
                    Divider(),
                    CustomCard(
                        title: 'Today Ricovered',
                        value: todayRecovered.toString()),
                    Divider(),
                    CustomCard(
                        title: 'Today Deaths', value: todayDeaths.toString()),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.r),
            child: Container(
              decoration: myDecoration,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    Text('Total Information', style: appColor18w700),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.r),
                      child: Divider(color: appColor.withOpacity(0.60)),
                    ),
                    SizedBox(height: 5.h),
                    CustomCard(
                        title: 'Total Cases', value: totalCases.toString()),
                    Divider(),
                    CustomCard(
                        title: 'Total Ricovered',
                        value: totalRecovered.toString()),
                    Divider(),
                    CustomCard(
                        title: 'Total Deaths', value: totalDeaths.toString()),
                    Divider(),
                    CustomCard(title: 'Active', value: active.toString()),
                    Divider(),
                    CustomCard(title: 'Critical', value: critical.toString()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
