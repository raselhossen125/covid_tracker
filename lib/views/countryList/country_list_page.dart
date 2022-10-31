// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable, non_constant_identifier_names

import 'package:covid_tracker/util/colors.dart';
import 'package:covid_tracker/widgets/my_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../provider/worldState_provider.dart';
import '../../util/style.dart';
import '../../widgets/country_page_shimmer_effect.dart';
import '../details/details_page.dart';

class CountryListPage extends StatelessWidget {
  static const routeName = 'country-list';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WorldStateProvider>(context);
    final searchController = TextEditingController();

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        foregroundColor: Colors.black,
        title: Text('Country'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.r),
          child: Column(
            children: [
              MyTextField(
                controller: searchController,
                hintText: 'Search with country name',
              ),
              SizedBox(height: 10.h),
              FutureBuilder(
                future: provider.getAllCountries(),
                builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final countryM = snapshot.data![index];
                          String countryName = countryM['country'];
                          if (searchController.text.isEmpty) {
                            return CountryItem(countryM, context);
                          } else if (countryName.toLowerCase().contains(
                                searchController.text.toLowerCase(),
                              )) {
                            return CountryItem(countryM, context);
                          } else {
                            return Container();
                          }
                        },
                      ),
                    );
                  } else {
                    return Expanded(
                      child: CountryPageShimmerEffect(),
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

  Padding CountryItem(countryM, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.r),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Colors.black.withOpacity(0.10))),
        child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    countryName: countryM['country'] ?? '',
                    active: countryM['active'].toInt(),
                    critical: countryM['critical'] ?? 0,
                    todayCases: countryM['todayCases'] ?? 0,
                    todayDeaths: countryM['todayDeaths'] ?? 0,
                    todayRecovered: countryM['todayRecovered'] ?? 0,
                    totalCases: countryM['cases'] ?? 0,
                    totalDeaths: countryM['deaths'] ?? 0,
                    totalRecovered: countryM['recovered'] ?? 0, 
                    population: countryM['population'] ?? 0, 
                    flag: countryM['countryInfo']['flag'] ?? '',
                  ),
                ));
          },
          dense: true,
          leading: SizedBox(
            height: 50.h,
            width: 50.w,
            child: Image.network(countryM['countryInfo']['flag']),
          ),
          title: Text(countryM['country'], style: black14w500),
          subtitle: Text(countryM['cases'].toString(), style: grey14w400),
        ),
      ),
    );
  }
}
